       // ===== MODERN SCRIPT =====
        document.addEventListener('DOMContentLoaded', function() {
            // Mobile Menu Toggle
            const mobileMenuToggle = document.querySelector('.mobile-menu-toggle');
            const mobileMenu = document.querySelector('.mobile-menu');
            
            if (mobileMenuToggle && mobileMenu) {
                mobileMenuToggle.addEventListener('click', function() {
                    mobileMenuToggle.classList.toggle('active');
                    mobileMenu.classList.toggle('active');
                });
            }
            
            // Contact Modal
            const contactTriggers = document.querySelectorAll('.contact-trigger');
            const contactModal = document.getElementById('contactModal');
            const modalClose = document.querySelector('.modal-close');
            const modalOverlay = document.querySelector('.modal-overlay');
            
            contactTriggers.forEach(trigger => {
                trigger.addEventListener('click', function(e) {
                    e.preventDefault();
                    contactModal.classList.add('active');
                    document.body.style.overflow = 'hidden';
                });
            });
            
            function closeModal() {
                contactModal.classList.remove('active');
                document.body.style.overflow = '';
            }
            
            if (modalClose) {
                modalClose.addEventListener('click', closeModal);
            }
            
            if (modalOverlay) {
                modalOverlay.addEventListener('click', closeModal);
            }
            
            // Escape key to close modal
            document.addEventListener('keydown', function(e) {
                if (e.key === 'Escape' && contactModal.classList.contains('active')) {
                    closeModal();
                }
            });
            
            // Smooth Scroll
            window.scrollToSection = function(sectionId) {
                const section = document.getElementById(sectionId);
                if (section) {
                    section.scrollIntoView({ behavior: 'smooth' });
                }
            };
            
            // Header Scroll Effect
            const header = document.querySelector('.modern-header');
            let lastScrollY = window.scrollY;
            
            window.addEventListener('scroll', function() {
                const currentScrollY = window.scrollY;
                
                if (currentScrollY > 100) {
                    header.style.background = 'rgba(255, 255, 255, 0.98)';
                    header.style.boxShadow = '0 4px 20px rgba(0, 0, 0, 0.1)';
                } else {
                    header.style.background = 'rgba(255, 255, 255, 0.95)';
                    header.style.boxShadow = '0 1px 3px rgba(0, 0, 0, 0.1)';
                }
                
                lastScrollY = currentScrollY;
            });
            
            // Animate on Scroll
            const observerOptions = {
                threshold: 0.1,
                rootMargin: '0px 0px -50px 0px'
            };
            
            const observer = new IntersectionObserver(function(entries) {
                entries.forEach(entry => {
                    if (entry.isIntersecting) {
                        entry.target.classList.add('animated');
                    }
                });
            }, observerOptions);
            
            const animateElements = document.querySelectorAll('.animate-on-scroll');
            animateElements.forEach(el => observer.observe(el));
            
            // Phone mask
            const phoneInput = document.getElementById('phone');
            if (phoneInput) {
                phoneInput.addEventListener('input', function(e) {
                    let value = e.target.value.replace(/\D/g, '');
                    value = value.replace(/(\d{2})(\d)/, '($1) $2');
                    value = value.replace(/(\d{5})(\d)/, '$1-$2');
                    e.target.value = value;
                });
            }
        });