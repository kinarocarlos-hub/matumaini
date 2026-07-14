document.addEventListener('DOMContentLoaded', () => {
    // Dynamic year
    const yearEl = document.getElementById('current-year');
    if (yearEl) {
        yearEl.textContent = new Date().getFullYear();
    }

    // Smooth scroll for navigation links
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', function(e) {
            e.preventDefault();
            const target = document.querySelector(this.getAttribute('href'));
            if (target) {
                target.scrollIntoView({
                    behavior: 'smooth',
                    block: 'start'
                });
                // Close mobile menu if open
                const navLinks = document.querySelector('.nav-links');
                const menuToggle = document.querySelector('.mobile-menu-toggle');
                if (navLinks && navLinks.classList.contains('is-open')) {
                    navLinks.classList.remove('is-open');
                    menuToggle.setAttribute('aria-expanded', 'false');
                }
            }
        });
    });

    // Mobile menu toggle
    const menuToggle = document.querySelector('.mobile-menu-toggle');
    const navLinks = document.querySelector('.nav-links');
    if (menuToggle && navLinks) {
        menuToggle.addEventListener('click', () => {
            const isOpen = navLinks.classList.toggle('is-open');
            menuToggle.setAttribute('aria-expanded', String(isOpen));
        });
    }

    // Navbar background on scroll
    const navbar = document.querySelector('.navbar');
    window.addEventListener('scroll', () => {
        const currentScroll = window.pageYOffset;
        if (currentScroll > 50) {
            navbar.style.background = 'rgba(10, 15, 30, 0.95)';
        } else {
            navbar.style.background = 'rgba(10, 15, 30, 0.85)';
        }
    });

    // Intersection Observer for fade-in animations
    const observerOptions = {
        threshold: 0.1,
        rootMargin: '0px 0px -50px 0px'
    };

    const observer = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.style.opacity = '1';
                entry.target.style.transform = 'translateY(0)';
            }
        });
    }, observerOptions);

    document.querySelectorAll('.feature-card, .carloseae-feature, .download-card, .value').forEach(el => {
        el.style.opacity = '0';
        el.style.transform = 'translateY(20px)';
        el.style.transition = 'opacity 0.6s ease, transform 0.6s ease';
        observer.observe(el);
    });

    // Initial animations
    setTimeout(() => {
        document.querySelectorAll('.feature-card, .carloseae-feature, .download-card, .value').forEach(el => {
            const rect = el.getBoundingClientRect();
            if (rect.top < window.innerHeight) {
                el.style.opacity = '1';
                el.style.transform = 'translateY(0)';
            }
        });
    }, 100);

    // Animated counters
    const counters = document.querySelectorAll('.stat-number');
    const counterObserver = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                const el = entry.target;
                const target = el.textContent;
                const numericPart = parseInt(target.replace(/\D/g, ''));
                if (!isNaN(numericPart) && !el.dataset.counted) {
                    el.dataset.counted = 'true';
                    animateCounter(el, numericPart, target);
                }
            }
        });
    }, { threshold: 0.5 });

    counters.forEach(counter => counterObserver.observe(counter));

    function animateCounter(el, target, suffix) {
        const duration = 1500;
        const start = performance.now();
        const startValue = 0;

        function update(now) {
            const elapsed = now - start;
            const progress = Math.min(elapsed / duration, 1);
            const eased = 1 - Math.pow(1 - progress, 3);
            const current = Math.floor(startValue + (target - startValue) * eased);
            el.textContent = current + suffix.replace(/[0-9]/g, '').trim();
            if (progress < 1) {
                requestAnimationFrame(update);
            } else {
                el.textContent = target + suffix.replace(/[0-9]/g, '').trim();
            }
        }

        requestAnimationFrame(update);
    }

    // Contact form validation
    const contactForm = document.getElementById('contact-form');
    if (contactForm) {
        contactForm.addEventListener('submit', (e) => {
            e.preventDefault();
            const formData = new FormData(contactForm);
            const name = formData.get('name')?.toString().trim();
            const email = formData.get('email')?.toString().trim();
            const message = formData.get('message')?.toString().trim();

            if (!name || !email || !message) {
                showFormMessage('Please fill in all fields.', 'error');
                return;
            }

            const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (!emailRegex.test(email)) {
                showFormMessage('Please enter a valid email address.', 'error');
                return;
            }

            showFormMessage('Thank you! Your message has been received.', 'success');
            contactForm.reset();
        });
    }

    function showFormMessage(text, type) {
        let messageEl = document.getElementById('form-message');
        if (!messageEl) {
            messageEl = document.createElement('div');
            messageEl.id = 'form-message';
            messageEl.style.cssText = 'padding:12px 16px;border-radius:8px;margin-top:12px;font-size:14px;';
            contactForm.parentNode.insertBefore(messageEl, contactForm.nextSibling);
        }
        messageEl.textContent = text;
        messageEl.style.background = type === 'success' ? 'rgba(16, 185, 129, 0.15)' : 'rgba(239, 68, 68, 0.15)';
        messageEl.style.color = type === 'success' ? '#6ee7b7' : '#fca5a5';
        messageEl.style.border = `1px solid ${type === 'success' ? 'rgba(16, 185, 129, 0.35)' : 'rgba(239, 68, 68, 0.35)'}`;
    }

    // Dynamic download card data
    const downloadData = [
        {
            icon: '📱',
            title: 'Download APK',
            description: 'Get the latest release for Android',
            href: 'https://github.com/kinarocarlos-hub/matumaini/releases/latest'
        },
        {
            icon: '⭐',
            title: 'Star on GitHub',
            description: 'Follow development and contribute',
            href: 'https://github.com/kinarocarlos-hub/matumaini'
        }
    ];

    const downloadContainer = document.getElementById('download-cards');
    if (downloadContainer) {
        downloadContainer.innerHTML = downloadData.map(item => `
            <a href="${item.href}" target="_blank" rel="noopener" class="download-card">
                <div class="download-icon">${item.icon}</div>
                <div class="download-info">
                    <h3>${item.title}</h3>
                    <p>${item.description}</p>
                </div>
                <div class="download-arrow">→</div>
            </a>
        `).join('');
    }

    // Active nav link highlight
    const sections = document.querySelectorAll('section[id]');
    const navItems = document.querySelectorAll('.nav-links a');

    window.addEventListener('scroll', () => {
        let current = '';
        sections.forEach(section => {
            const sectionTop = section.offsetTop;
            if (pageYOffset >= sectionTop - 120) {
                current = section.getAttribute('id');
            }
        });

        navItems.forEach(link => {
            link.style.color = '';
            if (link.getAttribute('href') === `#${current}`) {
                link.style.color = 'var(--color-gold)';
            }
        });
    });
});
