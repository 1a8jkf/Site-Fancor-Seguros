<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.*, java.io.*" %>
<%@ page import="java.sql.*, java.io.*, java.util.*" %>
<%@ page import="javax.naming.*, javax.sql.*" %>
<%@ page import="java.util.Properties" %>
<%@ page import="javax.mail.Message" %>
<%@ page import="javax.mail.MessagingException" %>
<%@ page import="javax.mail.Session" %>
<%@ page import="javax.mail.Transport" %>
<%@ page import="javax.mail.internet.InternetAddress" %>
<%@ page import="javax.mail.internet.MimeMessage" %>
<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.*" %>
<%@ page import="javax.mail.*"%>
<%@ page import="javax.mail.internet.*"%>
<%@ page import="javax.mail.util.ByteArrayDataSource"%>
<%@ page import="javax.mail.internet.MimeBodyPart"%>
<%@ page import="javax.mail.internet.MimeMessage"%>
<%@ page import="javax.mail.internet.MimeMultipart"%>
<%@ page import="java.io.ByteArrayOutputStream"%>
<%@ page import="java.util.Properties"%>
<%@ page import="javax.activation.DataHandler" %>
<%@ page import="java.io.*, java.util.*, javax.mail.*, javax.mail.internet.*" %>
<%@ page import="java.io.*, java.util.*, javax.mail.*, javax.mail.internet.*, javax.activation.*" %>
<%@ page import="oracle.jdbc.pool.OracleDataSource" %>
<%@ page import="com.itextpdf.text.Document" %>
<%@ page import="com.itextpdf.text.Paragraph" %>
<%@ page import="com.itextpdf.text.pdf.PdfWriter" %>
<%@ page import="java.util.Random" %>
<%@ page import="java.lang.StringBuilder" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Fancor Seguros - Proteção Completa para Você e Sua Família. Descubra nossos seguros e solicite uma cotação personalizada.">
    <meta name="keywords" content="seguros, proteção, cotação, Fancor, seguros auto, seguros residenciais, seguros de vida, seguros empresariais">
    <meta name="author" content="Fancor Seguros">
    <link rel="icon" href="assets/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="assets/apple-touch-icon.png">
    
    <title>Fancor Seguros - Proteção Completa para Você</title>

    <link rel="stylesheet" href="style/index.css">
    <link rel="stylesheet" href="assets/styles.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&family=Poppins:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    
    <!-- Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-C4X30KWJTL"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());
        gtag('config', 'G-C4X30KWJTL');
    </script>
</head>
<body>
    <!-- Header Moderno -->
    <header class="modern-header">
        <div class="header-container">
            <div class="logo-section">
                <a href="index.jsp" class="logo-link">
                    <img src="assets/logo-fancor.png" alt="Fancor Seguros" class="main-logo">
                </a>
            </div>

            <nav class="main-navigation">
                <ul class="nav-menu">
                    <li><a href="#institucional" class="nav-link">Institucional</a></li>
                    <li><a href="seguros.jsp" class="nav-link">Seguros</a></li>
                    <li><a href="#contato" class="nav-link contact-trigger">Contato</a></li>
                    <li><a href="https://vagas.fancar.com.br/"  class="nav-link">Trabalhe Conosco</a></li>
                </ul>
            </nav>

            <div class="header-actions">
                <button class="cta-header-btn contact-trigger">
                    <span>Solicitar Cotação</span>
                    <svg width="16" height="16" viewBox="0 0 24 24" fill="none">
                        <path d="M5 12H19M19 12L12 5M19 12L12 19" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                    </svg>
                </button>
                
                <button class="mobile-menu-toggle" aria-label="Menu">
                    <span></span>
                    <span></span>
                    <span></span>
                </button>
            </div>
        </div>

        <!-- Mobile Menu -->
        <div class="mobile-menu">
            <div class="mobile-menu-content">
                <nav class="mobile-navigation">
                    <a href="#institucional" class="mobile-nav-link">Institucional</a>
                    <a href="seguros.jsp" class="mobile-nav-link">Seguros</a>
                    <a href="#contato" class="mobile-nav-link contact-trigger">Contato</a>
                    <a href="https://vagas.fancar.com.br/"  class="mobile-nav-link">Trabalhe Conosco</a>
                </nav>
                <button class="mobile-cta-btn contact-trigger">Solicitar Cotação</button>
            </div>
        </div>
    </header>

    <!-- Hero Section Moderna -->
    <section class="hero-section">
        <div class="hero-background">
            <div class="hero-gradient"></div>
            <div class="hero-pattern"></div>
        </div>
        
        <div class="hero-container">
            <div class="hero-content">
                <div class="hero-badge">
                    <span class="badge-icon">🛡️</span>
                    <span>Proteção Completa</span>
                </div>
                
                <h1 class="hero-title">
                    Descubra seu 
                    <span class="title-highlight">Seguro Ideal</span>
                    com a Fancor
                </h1>
                
                <p class="hero-description">
                    Proteja o que mais importa para você com nossa ampla gama de seguros. 
                    Atendimento especializado, cobertura completa e a confiança de quem 
                    está no mercado há mais de 30 anos.
                </p>
                
                <div class="hero-actions">
                    <button class="primary-btn contact-trigger">
                        <span>Solicitar Cotação</span>
                        <svg width="20" height="20" viewBox="0 0 24 24" fill="none">
                            <path d="M5 12H19M19 12L12 5M19 12L12 19" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        </svg>
                    </button>
                    
                    <button class="secondary-btn" onclick="scrollToSection('services')">
                        <span>Conhecer Seguros</span>
                    </button>
                </div>
                
                <div class="hero-stats">
                    <div class="stat-item">
                        <span class="stat-number">30+</span>
                        <span class="stat-label">Anos de Experiência</span>
                    </div>
                    <div class="stat-item">
                        <span class="stat-number">20+</span>
                        <span class="stat-label">Lojas no PR e MT</span>
                    </div>
                    <div class="stat-item">
                        <span class="stat-number">500+</span>
                        <span class="stat-label">Colaboradores</span>
                    </div>
                </div>
            </div>
            
            <div class="hero-visual">
                <div class="hero-image-container">
                    <img src="assets/1_SiteFancor_1080.png" alt="Fancor Seguros" class="hero-image">
                    <div class="floating-card">
                        <div class="card-icon">📋</div>
                        <div class="card-content">
                            <h4>Cotação Rápida</h4>
                            <p>Em menos de 5 minutos</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Services Section Moderna -->
    <section class="services-section" id="services">
        <div class="services-container">
            <div class="section-header">
                <div class="section-badge">
                    <span>Nossos Produtos</span>
                </div>
                <h2 class="section-title">Seguros para Todas as Suas Necessidades</h2>
                <p class="section-description">
                    Oferecemos uma ampla gama de seguros para proteger você, sua família e seus bens
                </p>
            </div>

            <div class="services-grid">
                <div class="service-card featured">
                    <div class="service-icon">
                        <img src="assets/carro-icon.webp" alt="Seguro Auto">
                    </div>
                    <h3>Seguro Auto</h3>
                    <p>Proteção completa para seu veículo com cobertura contra roubo, furto e acidentes.</p>
                    <div class="service-features">
                        <span class="feature-tag">Mais Popular</span>
                    </div>
                </div>

                <div class="service-card">
                    <div class="service-icon">
                        <img src="assets/residencia-icon.webp" alt="Seguro Residencial">
                    </div>
                    <h3>Seguro Residencial</h3>
                    <p>Proteja seu lar contra incêndios, roubos e danos estruturais.</p>
                </div>

                <div class="service-card">
                    <div class="service-icon">
                        <img src="assets/vida-individual-icon.webp" alt="Seguro de Vida">
                    </div>
                    <h3>Seguro de Vida</h3>
                    <p>Garanta a segurança financeira da sua família em qualquer situação.</p>
                </div>

                <div class="service-card">
                    <div class="service-icon">
                        <img src="assets/empresa-icon.webp" alt="Seguro Empresarial">
                    </div>
                    <h3>Seguro Empresarial</h3>
                    <p>Proteja seu negócio com coberturas específicas para empresas.</p>
                </div>

                <div class="service-card">
                    <div class="service-icon">
                        <img src="assets/moto-icon.webp" alt="Seguro Moto">
                    </div>
                    <h3>Seguro Moto</h3>
                    <p>Cobertura especializada para motocicletas e ciclomotores.</p>
                </div>

                <div class="service-card">
                    <div class="service-icon">
                        <img src="assets/viagem-icon.webp" alt="Seguro Viagem">
                    </div>
                    <h3>Seguro Viagem</h3>
                    <p>Viaje com tranquilidade com nossa cobertura internacional.</p>
                </div>
            </div>

            <div class="services-footer">
                <a href="seguros.jsp" class="view-all-btn">
                    <span>Ver Todos os Seguros</span>
                    <svg width="20" height="20" viewBox="0 0 24 24" fill="none">
                        <path d="M5 12H19M19 12L12 5M19 12L12 19" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                    </svg>
                </a>
            </div>
        </div>
    </section>

    <!-- About Section Moderna -->
    <section class="about-section" id="institucional">
        <div class="about-container">
            <div class="about-content">
                <div class="about-text">
                    <div class="section-badge">
                        <span>Sobre Nós</span>
                    </div>
                    
                    <h2 class="section-title">Mais de 30 Anos Protegendo o que Importa</h2>
                    
                    <div class="about-description">
                        <p>
                            O Grupo Fancar atua no mercado automotivo do Paraná e do Mato Grosso, 
                            representando grandes marcas de renome, como Ford, Volkswagen, Fiat, 
                            Renault e Honda. Fundada pelo empresário Nelvio Perin em 1993.
                        </p>
                        
                        <p>
                            Hoje, o Grupo acumula diversos prêmios de qualidade e performance em vendas, 
                            conquistando reconhecimento nacional pela solidez comercial e profissional. 
                            Aproximadamente 500 colaboradores integram nossa equipe.
                        </p>
                    </div>
                    
                    <div class="about-highlights">
                        <div class="highlight-item">
                            <div class="highlight-icon">🏆</div>
                            <div class="highlight-content">
                                <h4>Prêmios de Qualidade</h4>
                                <p>Reconhecimento nacional</p>
                            </div>
                        </div>
                        
                        <div class="highlight-item">
                            <div class="highlight-icon">🏢</div>
                            <div class="highlight-content">
                                <h4>Múltiplos Negócios</h4>
                                <p>Consórcio e Seguros</p>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="about-visual">
                    <div class="about-image-container">
                        <img src="assets/1_SiteFancor_720.png" alt="Sobre a Fancor" class="about-image">
                        <div class="about-decoration"></div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Why Choose Us Section -->
    <section class="advantages-section">
        <div class="advantages-container">
            <div class="section-header">
                <div class="section-badge">
                    <span>Nossos Diferenciais</span>
                </div>
                <h2 class="section-title">Por que Escolher a Fancor?</h2>
                <p class="section-description">
                    Oferecemos muito mais que seguros. Oferecemos tranquilidade e confiança.
                </p>
            </div>

            <div class="advantages-grid">
                <div class="advantage-card">
                    <div class="advantage-icon">
                        <img src="assets/bubble-discussion-icon.png" alt="Atendimento">
                    </div>
                    <h3>Atendimento Especializado</h3>
                    <p>Nossa equipe é treinada para oferecer o melhor suporte e ajudar você a encontrar o seguro ideal.</p>
                </div>

                <div class="advantage-card">
                    <div class="advantage-icon">
                        <img src="assets/assessment-icon.png" alt="Cobertura">
                    </div>
                    <h3>Cobertura Completa</h3>
                    <p>Oferecemos ampla cobertura para proteger você, sua família e seus bens em qualquer situação.</p>
                </div>

                <div class="advantage-card">
                    <div class="advantage-icon">
                        <img src="assets/trust-alt-icon.png" alt="Confiabilidade">
                    </div>
                    <h3>Confiabilidade</h3>
                    <p>Anos de experiência no mercado, garantindo segurança e transparência em cada etapa do processo.</p>
                </div>

                <div class="advantage-card">
                    <div class="advantage-icon">
                        <img src="assets/time-fast-icon.png" alt="Rapidez">
                    </div>
                    <h3>Rapidez no Atendimento</h3>
                    <p>Resolvemos suas solicitações de forma rápida e eficiente, para que você tenha a tranquilidade que precisa.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer Moderno -->
    <footer class="modern-footer">
        <div class="footer-container">
            <div class="footer-content">
                <div class="footer-brand">
                    <img src="assets/logo-fancor.png" alt="Fancor" class="footer-logo">
                    <p class="footer-description">
                        Protegendo o que mais importa para você há mais de 30 anos.
                    </p>
                    <div class="footer-social">
                        <a href="http://facebook.com/fancorseguros" class="social-link" aria-label="Facebook">
                            <svg width="20" height="20" viewBox="0 0 24 24" fill="currentColor">
                                <path d="M24 12.073c0-6.627-5.373-12-12-12s-12 5.373-12 12c0 5.99 4.388 10.954 10.125 11.854v-8.385H7.078v-3.47h3.047V9.43c0-3.007 1.792-4.669 4.533-4.669 1.312 0 2.686.235 2.686.235v2.953H15.83c-1.491 0-1.956.925-1.956 1.874v2.25h3.328l-.532 3.47h-2.796v8.385C19.612 23.027 24 18.062 24 12.073z"/>
                            </svg>
                        </a>
                        <a href="https://www.instagram.com/fancorseguros/" class="social-link" aria-label="Instagram">
                            <svg width="20" height="20" viewBox="0 0 24 24" fill="currentColor">
                                <path d="M12 2.163c3.204 0 3.584.012 4.85.07 3.252.148 4.771 1.691 4.919 4.919.058 1.265.069 1.645.069 4.849 0 3.205-.012 3.584-.069 4.849-.149 3.225-1.664 4.771-4.919 4.919-1.266.058-1.644.07-4.85.07-3.204 0-3.584-.012-4.849-.07-3.26-.149-4.771-1.699-4.919-4.92-.058-1.265-.07-1.644-.07-4.849 0-3.204.013-3.583.07-4.849.149-3.227 1.664-4.771 4.919-4.919 1.266-.057 1.645-.069 4.849-.069zm0-2.163c-3.259 0-3.667.014-4.947.072-4.358.2-6.78 2.618-6.98 6.98-.059 1.281-.073 1.689-.073 4.948 0 3.259.014 3.668.072 4.948.2 4.358 2.618 6.78 6.98 6.98 1.281.058 1.689.072 4.948.072 3.259 0 3.668-.014 4.948-.072 4.354-.2 6.782-2.618 6.979-6.98.059-1.28.073-1.689.073-4.948 0-3.259-.014-3.667-.072-4.947-.196-4.354-2.617-6.78-6.979-6.98-1.281-.059-1.69-.073-4.949-.073zm0 5.838c-3.403 0-6.162 2.759-6.162 6.162s2.759 6.163 6.162 6.163 6.162-2.759 6.162-6.163c0-3.403-2.759-6.162-6.162-6.162zm0 10.162c-2.209 0-4-1.79-4-4 0-2.209 1.791-4 4-4s4 1.791 4 4c0 2.21-1.791 4-4 4zm6.406-11.845c-.796 0-1.441.645-1.441 1.44s.645 1.44 1.441 1.44c.795 0 1.439-.645 1.439-1.44s-.644-1.44-1.439-1.44z"/>
                            </svg>
                        </a>
                        <a href="https://br.linkedin.com/company/grupo-fancar" class="social-link" aria-label="LinkedIn">
                            <svg width="20" height="20" viewBox="0 0 24 24" fill="currentColor">
                                <path d="M20.447 20.452h-3.554v-5.569c0-1.328-.027-3.037-1.852-3.037-1.853 0-2.136 1.445-2.136 2.939v5.667H9.351V9h3.414v1.561h.046c.477-.9 1.637-1.85 3.37-1.85 3.601 0 4.267 2.37 4.267 5.455v6.286zM5.337 7.433c-1.144 0-2.063-.926-2.063-2.065 0-1.138.92-2.063 2.063-2.063 1.14 0 2.064.925 2.064 2.063 0 1.139-.925 2.065-2.064 2.065zm1.782 13.019H3.555V9h3.564v11.452zM22.225 0H1.771C.792 0 0 .774 0 1.729v20.542C0 23.227.792 24 1.771 24h20.451C23.2 24 24 23.227 24 22.271V1.729C24 .774 23.2 0 22.222 0h.003z"/>
                            </svg>
                        </a>
                    </div>
                </div>

                <div class="footer-links">
                    <div class="footer-column">
                        <h4>Marcas</h4>
                        <ul>
                            <li><a href="https://ford.fancar.com.br/" >Ford Fancar</a></li>
                            <li><a href="https://fiat.fancar.com.br/" >Fiat Fancar</a></li>
                            <li><a href="https://vw.fancar.com.br/" >Volkswagen Fancar</a></li>
                        </ul>
                    </div>

                    <div class="footer-column">
                        <h4>Serviços</h4>
                        <ul>
                            <li><a href="https://seminovos.fancar.com.br/" >Seminovos Fancar</a></li>
                            <li><a href="https://api.whatsapp.com/send?phone=558005914688" >Peças e Acessórios</a></li>
                            <li><a href="https://api.whatsapp.com/send?phone=558005914688" >Agendamento de Revisão</a></li>
                        </ul>
                    </div>

                    <div class="footer-column">
                        <h4>Contato</h4>
                        <ul>
                            <li><a href="tel:558005914688">0800 591 4688</a></li>
                            <li><a href="mailto:contato@fancor.com.br">contato@fancor.com.br</a></li>
                            <li><a href="#" class="contact-trigger">Solicitar Cotação</a></li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="footer-bottom">
                <div class="footer-bottom-content">
                    <div class="footer-logos">
                        <img src="assets/grupo-logo.png" alt="Grupo Fancar" class="footer-partner-logo">
                        <img src="assets/fancor-logo.png" alt="Fancor" class="footer-partner-logo">
                    </div>
                    <p class="footer-copyright">
                        &copy; 2024 Grupo Fancar. Todos os direitos reservados.
                    </p>
                </div>
            </div>
        </div>
    </footer>

    <!-- Contact Modal Moderno -->
    <div class="contact-modal" id="contactModal">
        <div class="modal-overlay"></div>
        <div class="modal-content">
            <div class="modal-header">
                <h3>Solicite sua Cotação</h3>
                <button class="modal-close" aria-label="Fechar">
                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none">
                        <path d="M18 6L6 18M6 6L18 18" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                    </svg>
                </button>
            </div>
            
            <div class="modal-body">
                <p class="modal-description">
                    Preencha o formulário abaixo e entraremos em contato com você o mais breve possível.
                </p>
                
                <form class="contact-form" action="" method="post">
                    <div class="form-group">
                        <label for="name">Nome Completo</label>
                        <input type="text" id="name" name="nome" required>
                    </div>

                    <div class="form-row">
                        <div class="form-group">
                            <label for="city">Cidade</label>
                            <input type="text" id="city" name="cidade" required>
                        </div>

                        <div class="form-group">
                            <label for="phone">Telefone</label>
                            <input type="tel" id="phone" name="telefone" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="email">E-mail</label>
                        <input type="email" id="email" name="email" required>
                    </div>

                    <div class="form-group">
                        <label class="checkbox-label">
                            <input type="checkbox" name="agree" required>
                            <span class="checkmark"></span>
                            <span class="checkbox-text">Concordo com os <a href="#" >termos de uso</a> e <a href="#" >política de privacidade</a></span>
                        </label>
                    </div>

                    <button type="submit" class="submit-btn">
                        <span>Enviar Solicitação</span>
                        <svg width="20" height="20" viewBox="0 0 24 24" fill="none">
                            <path d="M5 12H19M19 12L12 5M19 12L12 19" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        </svg>
                    </button>
                </form>
            </div>
        </div>
    </div>

    <script src="js/index.js"></script>
</body>
</html>


  <%
    if (request.getMethod().equals("POST")) {
        String nome = request.getParameter("nome");
        String cidade = request.getParameter("cidade");
        String telefone = request.getParameter("telefone");
        String email = request.getParameter("email");

        Properties mailProps = new Properties();
        mailProps.put("mail.smtp.host", "email@dominio.com.br");
        mailProps.put("mail.smtp.port", "587");
        mailProps.put("mail.smtp.auth", "true");
        mailProps.put("mail.smtp.starttls.enable", "false");

        // Credenciais do email
        String senderEmail = "email@dominio.com.br";
        String senderPassword = "";

        // Destinatário do email
        List<String> recipients = new ArrayList<>();
            recipients.add("email@dominio.com.br");
            recipients.add("email@dominio.com.br");
            
        // Criação da sessão de email
        Session sessions = Session.getInstance(mailProps, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(senderEmail, senderPassword);
            }
        });

        try {
            // Cria a mensagem de e-mail
            Message message = new MimeMessage(sessions);
            message.setFrom(new InternetAddress(senderEmail));

            for (String recipient : recipients) {
                message.addRecipient(Message.RecipientType.TO, new InternetAddress(recipient));
            }
            
            message.setSubject("Solicitação de Cotação - Fancor Seguros");

            String charset = "UTF-8";
            String conteudoEmail = "<html>" +
            "<head>" +
            "<title>Solicitação de Cotação - Fancor Seguros</title>" +"<style>" +
                "body { margin: 0; padding: 0; background-color: black;}" +
                ".main-mail-section {width: 500px; height: 400px; margin: 0 auto; background-color: rgb(19, 19, 19);}" +
                ".main-mail-title {width: 100%; height: 60px;}" +
                ".main-mail-title h1 {position: relative; font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif; font-weight: 400; font-size: 25px; padding-top: 35px; margin-left: 35px; color: white;}" +
                ".main-mail-body {width: 100%; height: 350px;}" +
                ".main-body-mail-text {width: 90%; height: 90%; padding: 10px;}" +
                ".grey-text {font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif; font-size: 16px; margin-left: 35px; color: rgb(190, 190, 190); text-align: justify;}" +
                ".main-mail-body-relator {position: relative; margin-left: 35px; max-width: 93%; overflow-wrap: break-word;}" +
                ".main-mail-body-relator h2 {position: relative; font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif; font-weight: 400; font-size: 20px; padding-top: 8px; color: white; margin: 0; padding-top: 10px; margin-bottom: 5px;}" +
                ".main-mail-body-relator p {font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif; font-size: 16px; margin-left: 35px; color: rgb(190, 190, 190); text-align: justify; margin: 0; margin-bottom: 3px;}" +
                ".main-mail-body-relator h3 {position: relative; font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif; font-weight: 400; font-size: 20px; margin: 0; padding-top: 30px;  margin-bottom: 5px; color: white;}" +
            "</style>" +
            "</head>" +
            "<body>" +
                "<section class='main-mail-section'>" +
                    "<div class='main-mail-title'>" +
                        "<h1>Solicitação de cotação</h1>" +
                    "</div>" +

                    "<div class='main-mail-body'>" +
                        "<div class='main-body-mail-text'>" +
                            "<p class='grey-text'>Você recebeu uma solicitação de cotagem, os dados do cliente são:</p>" +

                            "<div class='main-mail-body-relator'>" +
                                "<h2>Detalhes do solicitante</h2>" +
                                "<p><b>Nome: </b>"+nome+"</p>" +
                                "<p><b>Cidade: </b>"+cidade+"</p>" +
                                "<p><b>Telefone: </b>"+telefone+"</p>" +
                                "<p><b>E-mail: </b>"+email+"</p>" +
                            "</div>" +
                        "</div>" +
                    "</div>" +
                "</section>" +
            "</body>" +
            "</html>";

            message.setContent(conteudoEmail, "text/html; charset=" + charset);

            // Envio do e-mail
            Transport.send(message);

            // Resposta para o usuário (opcional)
            out.println("<script>alert('Formulário enviado com sucesso!');</script>");
        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }
    %>  