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
<%@ page import="javax.activation.DataHandler" %>
<%@ page import="oracle.jdbc.pool.OracleDataSource" %>
<%@ page import="com.itextpdf.text.Document" %>
<%@ page import="com.itextpdf.text.Paragraph" %>
<%@ page import="com.itextpdf.text.pdf.PdfWriter" %>
<%@ page import="java.util.Random" %>
<%@ page import="java.lang.StringBuilder" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Conheça todos os seguros oferecidos pela Fancor Seguros. Proteção completa para você, sua família e seus bens.">
    <title>Seguros Fancor - Proteção Completa para Todas as Suas Necessidades</title>
    
    <!-- Fonts & Icons -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&family=Poppins:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    
    <!-- Styles -->
     <link rel="stylesheet" href="style/seguros.css">
    
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
    <!-- Modern Header -->
    <header class="modern-header">
        <div class="header-container">
            <div class="logo-section">
                <a href="index.jsp" class="logo-link">
                    <img src="assets/logo-fancor.png" alt="Fancor Seguros" class="main-logo">
                </a>
            </div>

            <nav class="main-navigation">
                <ul class="nav-menu">
                    <li><a href="index.jsp" class="nav-link">Institucional</a></li>
                    <li><a href="seguros.jsp" class="nav-link active">Seguros</a></li>
                    <li><a href="#" class="nav-link contact-trigger">Contato</a></li>
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
                    <a href="index.jsp" class="mobile-nav-link">Institucional</a>
                    <a href="seguros.jsp" class="mobile-nav-link active">Seguros</a>
                    <a href="#" class="mobile-nav-link contact-trigger">Contato</a>
                    <a href="https://vagas.fancar.com.br/"  class="mobile-nav-link">Trabalhe Conosco</a>
                </nav>
                <button class="mobile-cta-btn contact-trigger">Solicitar Cotação</button>
            </div>
        </div>
    </header>

    <section class="services-section" id="services">
        <div class="services-container">
            <div class="section-header">
                <h2 class="section-title">Seguros para Cada Momento da Sua Vida</h2>
                <p class="section-description">
                    Oferecemos uma linha completa de seguros para proteger você, sua família, seus bens e seu negócio
                </p>
            </div>

            <div class="services-grid">
                <!-- Seguro Auto -->
                <div class="service-card featured" data-category="veiculos">
                    <div class="service-header">
                        <div class="service-icon">
                            <img src="assets/carro-icon.webp" alt="Seguro Auto">
                        </div>
                        <div class="service-badge">Mais Popular</div>
                    </div>
                    <div class="service-content">
                        <h3>Seguro Auto</h3>
                        <p>Proteção completa para seu veículo com cobertura contra roubo, furto, colisão e assistência 24h.</p>
                        <ul class="service-features">
                            <li>Cobertura contra terceiros</li>
                            <li>Assistência 24 horas</li>
                            <li>Carro reserva</li>
                            <li>Proteção contra roubo e furto</li>
                        </ul>
                    </div>
                    <div class="service-footer">
                        <button class="service-btn contact-trigger" data-service="Seguro Auto">
                            <span>Solicitar Cotação</span>
                            <svg width="16" height="16" viewBox="0 0 24 24" fill="none">
                                <path d="M5 12H19M19 12L12 5M19 12L12 19" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                            </svg>
                        </button>
                    </div>
                </div>

                <!-- Seguro Moto -->
                <div class="service-card" data-category="veiculos">
                    <div class="service-header">
                        <div class="service-icon">
                            <img src="assets/moto-icon.webp" alt="Seguro Moto">
                        </div>
                    </div>
                    <div class="service-content">
                        <h3>Seguro Moto</h3>
                        <p>Cobertura especializada para motocicletas e ciclomotores com proteção adequada para motociclistas.</p>
                        <ul class="service-features">
                            <li>Cobertura para acidentes</li>
                            <li>Proteção contra roubo</li>
                            <li>Assistência especializada</li>
                            <li>Equipamentos de segurança</li>
                        </ul>
                    </div>
                    <div class="service-footer">
                        <button class="service-btn contact-trigger" data-service="Seguro Moto">
                            <span>Solicitar Cotação</span>
                            <svg width="16" height="16" viewBox="0 0 24 24" fill="none">
                                <path d="M5 12H19M19 12L12 5M19 12L12 19" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                            </svg>
                        </button>
                    </div>
                </div>

                <!-- Seguro Caminhão -->
                <div class="service-card" data-category="veiculos">
                    <div class="service-header">
                        <div class="service-icon">
                            <img src="assets/caminhao-icon.webp" alt="Seguro Caminhão">
                        </div>
                    </div>
                    <div class="service-content">
                        <h3>Seguro Caminhão</h3>
                        <p>Proteção robusta para veículos pesados e comerciais, ideal para transportadores e empresas.</p>
                        <ul class="service-features">
                            <li>Cobertura para carga</li>
                            <li>Responsabilidade civil</li>
                            <li>Assistência rodoviária</li>
                            <li>Proteção do condutor</li>
                        </ul>
                    </div>
                    <div class="service-footer">
                        <button class="service-btn contact-trigger" data-service="Seguro Caminhão">
                            <span>Solicitar Cotação</span>
                            <svg width="16" height="16" viewBox="0 0 24 24" fill="none">
                                <path d="M5 12H19M19 12L12 5M19 12L12 19" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                            </svg>
                        </button>
                    </div>
                </div>

                <!-- Seguro Residencial -->
                <div class="service-card" data-category="patrimonial">
                    <div class="service-header">
                        <div class="service-icon">
                            <img src="assets/residencia-icon.webp" alt="Seguro Residencial">
                        </div>
                    </div>
                    <div class="service-content">
                        <h3>Seguro Residencial</h3>
                        <p>Proteja seu lar contra incêndios, roubos, danos elétricos e desastres naturais.</p>
                        <ul class="service-features">
                            <li>Cobertura estrutural</li>
                            <li>Proteção de conteúdo</li>
                            <li>Responsabilidade civil</li>
                            <li>Assistência domiciliar</li>
                        </ul>
                    </div>
                    <div class="service-footer">
                        <button class="service-btn contact-trigger" data-service="Seguro Residencial">
                            <span>Solicitar Cotação</span>
                            <svg width="16" height="16" viewBox="0 0 24 24" fill="none">
                                <path d="M5 12H19M19 12L12 5M19 12L12 19" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                            </svg>
                        </button>
                    </div>
                </div>

                <!-- Seguro Empresarial -->
                <div class="service-card" data-category="empresarial">
                    <div class="service-header">
                        <div class="service-icon">
                            <img src="assets/empresa-icon.webp" alt="Seguro Empresarial">
                        </div>
                    </div>
                    <div class="service-content">
                        <h3>Seguro Empresarial</h3>
                        <p>Soluções completas para proteger seu negócio contra diversos riscos operacionais.</p>
                        <ul class="service-features">
                            <li>Cobertura patrimonial</li>
                            <li>Responsabilidade civil</li>
                            <li>Lucros cessantes</li>
                            <li>Equipamentos eletrônicos</li>
                        </ul>
                    </div>
                    <div class="service-footer">
                        <button class="service-btn contact-trigger" data-service="Seguro Empresarial">
                            <span>Solicitar Cotação</span>
                            <svg width="16" height="16" viewBox="0 0 24 24" fill="none">
                                <path d="M5 12H19M19 12L12 5M19 12L12 19" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                            </svg>
                        </button>
                    </div>
                </div>

                <!-- Seguro Condomínio -->
                <div class="service-card" data-category="patrimonial">
                    <div class="service-header">
                        <div class="service-icon">
                            <img src="assets/condominio-icon.webp" alt="Seguro Condomínio">
                        </div>
                    </div>
                    <div class="service-content">
                        <h3>Seguro Condomínio</h3>
                        <p>Proteção específica para condomínios residenciais e comerciais com coberturas adequadas.</p>
                        <ul class="service-features">
                            <li>Áreas comuns</li>
                            <li>Responsabilidade civil</li>
                            <li>Equipamentos coletivos</li>
                            <li>Administração predial</li>
                        </ul>
                    </div>
                    <div class="service-footer">
                        <button class="service-btn contact-trigger" data-service="Seguro Condomínio">
                            <span>Solicitar Cotação</span>
                            <svg width="16" height="16" viewBox="0 0 24 24" fill="none">
                                <path d="M5 12H19M19 12L12 5M19 12L12 19" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                            </svg>
                        </button>
                    </div>
                </div>

                <!-- Seguro de Vida Individual -->
                <div class="service-card" data-category="vida">
                    <div class="service-header">
                        <div class="service-icon">
                            <img src="assets/vida-individual-icon.webp" alt="Seguro de Vida Individual">
                        </div>
                    </div>
                    <div class="service-content">
                        <h3>Vida Individual</h3>
                        <p>Garanta a segurança financeira da sua família com nosso seguro de vida individual.</p>
                        <ul class="service-features">
                            <li>Cobertura por morte</li>
                            <li>Invalidez permanente</li>
                            <li>Doenças graves</li>
                            <li>Assistência funeral</li>
                        </ul>
                    </div>
                    <div class="service-footer">
                        <button class="service-btn contact-trigger" data-service="Seguro de Vida Individual">
                            <span>Solicitar Cotação</span>
                            <svg width="16" height="16" viewBox="0 0 24 24" fill="none">
                                <path d="M5 12H19M19 12L12 5M19 12L12 19" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                            </svg>
                        </button>
                    </div>
                </div>

                <!-- Seguro de Vida Global -->
                <div class="service-card" data-category="vida">
                    <div class="service-header">
                        <div class="service-icon">
                            <img src="assets/vida-global-icon.webp" alt="Seguro de Vida Global">
                        </div>
                    </div>
                    <div class="service-content">
                        <h3>Vida Global</h3>
                        <p>Cobertura ampliada de seguro de vida com benefícios adicionais e proteção internacional.</p>
                        <ul class="service-features">
                            <li>Cobertura mundial</li>
                            <li>Múltiplas coberturas</li>
                            <li>Benefícios em vida</li>
                            <li>Assistência global</li>
                        </ul>
                    </div>
                    <div class="service-footer">
                        <button class="service-btn contact-trigger" data-service="Seguro de Vida Global">
                            <span>Solicitar Cotação</span>
                            <svg width="16" height="16" viewBox="0 0 24 24" fill="none">
                                <path d="M5 12H19M19 12L12 5M19 12L12 19" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                            </svg>
                        </button>
                    </div>
                </div>

                <!-- Seguro de Acidentes -->
                <div class="service-card" data-category="vida">
                    <div class="service-header">
                        <div class="service-icon">
                            <img src="assets/acidentes-icon.webp" alt="Seguro de Acidentes">
                        </div>
                    </div>
                    <div class="service-content">
                        <h3>Seguro de Acidentes</h3>
                        <p>Proteção específica contra acidentes pessoais com cobertura para diversas situações.</p>
                        <ul class="service-features">
                            <li>Morte acidental</li>
                            <li>Invalidez por acidente</li>
                            <li>Despesas médicas</li>
                            <li>Diárias por internação</li>
                        </ul>
                    </div>
                    <div class="service-footer">
                        <button class="service-btn contact-trigger" data-service="Seguro de Acidentes">
                            <span>Solicitar Cotação</span>
                            <svg width="16" height="16" viewBox="0 0 24 24" fill="none">
                                <path d="M5 12H19M19 12L12 5M19 12L12 19" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                            </svg>
                        </button>
                    </div>
                </div>

                <!-- Seguro Viagem -->
                <div class="service-card" data-category="especiais">
                    <div class="service-header">
                        <div class="service-icon">
                            <img src="assets/viagem-icon.webp" alt="Seguro Viagem">
                        </div>
                    </div>
                    <div class="service-content">
                        <h3>Seguro Viagem</h3>
                        <p>Viaje com tranquilidade com nossa cobertura nacional e internacional completa.</p>
                        <ul class="service-features">
                            <li>Despesas médicas</li>
                            <li>Cancelamento de viagem</li>
                            <li>Bagagem extraviada</li>
                            <li>Assistência 24h</li>
                        </ul>
                    </div>
                    <div class="service-footer">
                        <button class="service-btn contact-trigger" data-service="Seguro Viagem">
                            <span>Solicitar Cotação</span>
                            <svg width="16" height="16" viewBox="0 0 24 24" fill="none">
                                <path d="M5 12H19M19 12L12 5M19 12L12 19" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                            </svg>
                        </button>
                    </div>
                </div>

                <!-- Seguro Bike -->
                <div class="service-card" data-category="especiais">
                    <div class="service-header">
                        <div class="service-icon">
                            <img src="assets/bike-icon.webp" alt="Seguro Bike">
                        </div>
                    </div>
                    <div class="service-content">
                        <h3>Seguro Bike</h3>
                        <p>Proteção específica para bicicletas contra roubo, furto e acidentes durante o uso.</p>
                        <ul class="service-features">
                            <li>Roubo e furto</li>
                            <li>Acidentes pessoais</li>
                            <li>Danos à bicicleta</li>
                            <li>Responsabilidade civil</li>
                        </ul>
                    </div>
                    <div class="service-footer">
                        <button class="service-btn contact-trigger" data-service="Seguro Bike">
                            <span>Solicitar Cotação</span>
                            <svg width="16" height="16" viewBox="0 0 24 24" fill="none">
                                <path d="M5 12H19M19 12L12 5M19 12L12 19" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                            </svg>
                        </button>
                    </div>
                </div>

                <!-- Seguro Aluguel -->
                <div class="service-card" data-category="patrimonial">
                    <div class="service-header">
                        <div class="service-icon">
                            <img src="assets/aluguel-icon.webp" alt="Seguro Aluguel">
                        </div>
                    </div>
                    <div class="service-content">
                        <h3>Seguro Aluguel</h3>
                        <p>Proteção para locadores e locatários com cobertura para inadimplência e danos ao imóvel.</p>
                        <ul class="service-features">
                            <li>Inadimplência</li>
                            <li>Danos ao imóvel</li>
                            <li>Despesas judiciais</li>
                            <li>Morte do inquilino</li>
                        </ul>
                    </div>
                    <div class="service-footer">
                        <button class="service-btn contact-trigger" data-service="Seguro Aluguel">
                            <span>Solicitar Cotação</span>
                            <svg width="16" height="16" viewBox="0 0 24 24" fill="none">
                                <path d="M5 12H19M19 12L12 5M19 12L12 19" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                            </svg>
                        </button>
                    </div>
                </div>
            </div>

            <!-- Filter Tabs -->
            <div class="filter-tabs">
                <button class="filter-tab active" data-category="all">Todos os Seguros</button>
                <button class="filter-tab" data-category="veiculos">Veículos</button>
                <button class="filter-tab" data-category="patrimonial">Patrimonial</button>
                <button class="filter-tab" data-category="vida">Vida</button>
                <button class="filter-tab" data-category="empresarial">Empresarial</button>
                <button class="filter-tab" data-category="especiais">Especiais</button>
            </div>
        </div>
    </section>

    <!-- CTA Section -->
    <section class="cta-section">
        <div class="cta-container">
            <div class="cta-content">
                <h2>Não encontrou o seguro ideal?</h2>
                <p>Nossa equipe especializada está pronta para ajudar você a encontrar a proteção perfeita para suas necessidades específicas.</p>
                <button class="cta-btn contact-trigger">
                    <span>Fale com um Especialista</span>
                    <svg width="20" height="20" viewBox="0 0 24 24" fill="none">
                        <path d="M22 16.92V19.92C22.0011 20.1985 21.9441 20.4742 21.8325 20.7293C21.7209 20.9845 21.5573 21.2136 21.3521 21.4019C21.1468 21.5901 20.9046 21.7335 20.6407 21.8227C20.3769 21.9119 20.0974 21.9451 19.82 21.92C16.7428 21.5856 13.787 20.5341 11.19 18.85C8.77382 17.3147 6.72533 15.2662 5.18999 12.85C3.49997 10.2412 2.44824 7.27099 2.11999 4.18C2.095 3.90347 2.12787 3.62476 2.21649 3.36162C2.30512 3.09849 2.44756 2.85669 2.63476 2.65162C2.82196 2.44655 3.0498 2.28271 3.30379 2.17052C3.55777 2.05833 3.83233 2.00026 4.10999 2H7.10999C7.59531 1.99522 8.06579 2.16708 8.43376 2.48353C8.80173 2.79999 9.04207 3.23945 9.10999 3.72C9.23662 4.68007 9.47144 5.62273 9.80999 6.53C9.94454 6.88792 9.97366 7.27691 9.8939 7.65088C9.81415 8.02485 9.62886 8.36811 9.35999 8.64L8.08999 9.91C9.51355 12.4135 11.5865 14.4864 14.09 15.91L15.36 14.64C15.6319 14.3711 15.9751 14.1858 16.3491 14.1061C16.7231 14.0263 17.1121 14.0555 17.47 14.19C18.3773 14.5286 19.3199 14.7634 20.28 14.89C20.7658 14.9585 21.2094 15.2032 21.5265 15.5775C21.8437 15.9518 22.0122 16.4296 22 16.92Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                    </svg>
                </button>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="modern-footer">
        <div class="footer-container">
            <div class="footer-content">
                <div class="footer-brand">
                    <img src="assets/logo-fancor.png" alt="Fancor" class="footer-logo">
                    <p class="footer-description">
                        Protegendo o que mais importa para você há mais de 30 anos.
                    </p>
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
                            <li><a href="#" >Peças e Acessórios</a></li>
                            <li><a href="#" >Agendamento de Revisão</a></li>
                        </ul>
                    </div>

                    <div class="footer-column">
                        <h4>Seguros</h4>
                        <ul>
                            <li><a href="#" class="contact-trigger">Seguro Auto</a></li>
                            <li><a href="#" class="contact-trigger">Seguro Residencial</a></li>
                            <li><a href="#" class="contact-trigger">Seguro de Vida</a></li>
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

    <!-- Contact Modal -->
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
                    Preencha o formulário abaixo e entraremos em contato com você o mais breve possível com a melhor cotação.
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
                        <label for="service">Seguro de Interesse</label>
                        <select id="service" name="seguro">
                            <option value="">Selecione um seguro</option>
                            <option value="Seguro Auto">Seguro Auto</option>
                            <option value="Seguro Moto">Seguro Moto</option>
                            <option value="Seguro Residencial">Seguro Residencial</option>
                            <option value="Seguro de Vida">Seguro de Vida</option>
                            <option value="Seguro Empresarial">Seguro Empresarial</option>
                            <option value="Outros">Outros</option>
                        </select>
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

    <!-- Scripts -->
    <script src="js/seguros.js"></script>

    <%
    if (request.getMethod().equals("POST")) {
        String nome = request.getParameter("nome");
        String cidade = request.getParameter("cidade");
        String telefone = request.getParameter("telefone");
        String email = request.getParameter("email");
        String seguro = request.getParameter("seguro");

        Properties mailProps = new Properties();
        mailProps.put("mail.smtp.host", "email@dominio.com.br");
        mailProps.put("mail.smtp.port", "587");
        mailProps.put("mail.smtp.auth", "true");
        mailProps.put("mail.smtp.starttls.enable", "false");

        String senderEmail = "email@dominio.com.br";
        String senderPassword = "";

        List<String> recipients = new ArrayList<>();
            recipients.add("email@dominio.com.br");
            recipients.add("email@dominio.com.br");
            
        Session sessions = Session.getInstance(mailProps, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(senderEmail, senderPassword);
            }
        });

        try {
            Message message = new MimeMessage(sessions);
            message.setFrom(new InternetAddress(senderEmail));

            for (String recipient : recipients) {
                message.addRecipient(Message.RecipientType.TO, new InternetAddress(recipient));
            }
            
            message.setSubject("Solicitação de Cotação - Fancor Seguros");
        
            String charset = "UTF-8";
            String conteudoEmail = "<!DOCTYPE html>" +
            "<html>" +
            "<head>" +
            "<meta charset='UTF-8'>" +
            "<title>Solicitação de Cotação - Fancor Seguros</title>" +
            "<style>" +
                "body { margin: 0; padding: 20px; background-color: #f5f5f5; font-family: 'Arial', sans-serif; }" +
                ".email-container { max-width: 600px; margin: 0 auto; background: white; border-radius: 10px; overflow: hidden; box-shadow: 0 4px 20px rgba(0,0,0,0.1); }" +
                ".email-header { background: linear-gradient(135deg, #2563eb, #1d4ed8); color: white; padding: 30px; text-align: center; }" +
                ".email-header h1 { margin: 0; font-size: 24px; font-weight: 600; }" +
                ".email-body { padding: 30px; }" +
                ".info-section { margin-bottom: 25px; }" +
                ".info-section h2 { color: #2563eb; font-size: 18px; margin-bottom: 15px; border-bottom: 2px solid #e5e7eb; padding-bottom: 8px; }" +
                ".info-item { margin-bottom: 10px; }" +
                ".info-label { font-weight: 600; color: #374151; display: inline-block; width: 100px; }" +
                ".info-value { color: #6b7280; }" +
                ".highlight { background: #f3f4f6; padding: 15px; border-radius: 8px; border-left: 4px solid #2563eb; }" +
            "</style>" +
            "</head>" +
            "<body>" +
                "<div class='email-container'>" +
                    "<div class='email-header'>" +
                        "<h1>Nova Solicitação de Cotação</h1>" +
                    "</div>" +
                    "<div class='email-body'>" +
                        "<div class='highlight'>" +
                            "<p>Você recebeu uma nova solicitação de cotação através do site Fancor Seguros.</p>" +
                        "</div>" +
                        "<div class='info-section'>" +
                            "<h2>Dados do Cliente</h2>" +
                            "<div class='info-item'><span class='info-label'>Nome:</span> <span class='info-value'>" + nome + "</span></div>" +
                            "<div class='info-item'><span class='info-label'>Cidade:</span> <span class='info-value'>" + cidade + "</span></div>" +
                            "<div class='info-item'><span class='info-label'>Telefone:</span> <span class='info-value'>" + telefone + "</span></div>" +
                            "<div class='info-item'><span class='info-label'>E-mail:</span> <span class='info-value'>" + email + "</span></div>" +
                            (seguro != null && !seguro.isEmpty() ? 
                                "<div class='info-item'><span class='info-label'>Seguro:</span> <span class='info-value'>" + seguro + "</span></div>" : "") +
                        "</div>" +
                    "</div>" +
                "</div>" +
            "</body>" +
            "</html>";

            message.setContent(conteudoEmail, "text/html; charset=" + charset);
            Transport.send(message);

            out.println("<script>alert('Solicitação enviada com sucesso! Entraremos em contato em breve.'); window.location.href='seguros.jsp';</script>");
        } catch (MessagingException e) {
            e.printStackTrace();
            out.println("<script>alert('Erro ao enviar solicitação. Tente novamente.'); window.location.href='seguros.jsp';</script>");
        }
    }
    %>  
</body>
</html>