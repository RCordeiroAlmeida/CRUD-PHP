-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 11/11/2023 às 18:05
-- Versão do servidor: 10.4.22-MariaDB
-- Versão do PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `simweb`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `analise_laboratorial`
--

CREATE TABLE `analise_laboratorial` (
  `anl_cod` int(11) NOT NULL,
  `est_cod` int(11) NOT NULL,
  `anl_mes` int(11) NOT NULL,
  `anl_ano` int(11) NOT NULL,
  `ren_cod` int(11) NOT NULL,
  `esp_cod` int(11) NOT NULL,
  `anl_tipo` int(11) NOT NULL COMMENT '1 - microbiológica\r\n2 - fisico-quimica',
  `anl_resultado` int(11) NOT NULL COMMENT '1 - conforme\r\n2 - Não conforme',
  `rnc_cod` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `analise_laboratorial`
--

INSERT INTO `analise_laboratorial` (`anl_cod`, `est_cod`, `anl_mes`, `anl_ano`, `ren_cod`, `esp_cod`, `anl_tipo`, `anl_resultado`, `rnc_cod`) VALUES
(1, 1, 1, 2022, 0, 1, 1, 1, NULL),
(2, 2, 2, 2021, 0, 7, 1, 1, NULL),
(3, 1, 1, 2020, 0, 1, 1, 1, NULL),
(4, 1, 1, 2020, 0, 1, 1, 1, NULL),
(5, 1, 1, 2020, 0, 1, 1, 1, NULL),
(6, 1, 1, 2020, 0, 1, 1, 1, NULL),
(7, 1, 1, 2020, 0, 1, 1, 1, NULL),
(8, 1, 1, 2020, 0, 1, 1, 1, NULL),
(9, 1, 1, 2020, 0, 1, 1, 1, NULL),
(10, 1, 1, 2020, 0, 1, 2, 1, NULL),
(11, 1, 1, 2021, 0, 1, 2, 1, NULL),
(12, 1, 1, 2022, 0, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `aviso`
--

CREATE TABLE `aviso` (
  `avi_cod` int(11) NOT NULL,
  `avi_titulo` text NOT NULL,
  `avi_descricao` text NOT NULL,
  `avi_data` date NOT NULL,
  `avi_anexo` text NOT NULL,
  `usu_cod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `aviso`
--

INSERT INTO `aviso` (`avi_cod`, `avi_titulo`, `avi_descricao`, `avi_data`, `avi_anexo`, `usu_cod`) VALUES
(1, '0', '0', '2024-03-02', '', 1),
(2, 'TESTE', '0', '2024-03-02', '', 1),
(3, 'TESTE', 'tesgte', '2024-02-02', '', 1),
(4, 'TESTE2', 'TESTE 2\r\n', '2023-07-21', '', 1),
(5, 'TESTE', 'TESTE\r\n', '2023-07-24', '', 1),
(6, 'ALMOÇO', 'O ALMOÇO HOJE É POR CONTA DA RAFAELA', '2023-07-24', '', 1),
(7, 'TESTE3\r\n', 'TESTE 2\r\n', '2023-07-21', '', 1),
(8, 'TESTE ', 'DESCRIÇÃO DO AVISO ', '2023-08-09', '', 1),
(9, 'TESTE', 'TESTE 2', '2023-08-08', '', 1),
(10, 'TESTE', 'TEDTE', '2023-08-11', 'arquivos/anexo/20230811064810Descrição das rodas.txt', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cidade`
--

CREATE TABLE `cidade` (
  `cid_cod` int(11) NOT NULL,
  `cid_nome` varchar(100) NOT NULL,
  `est_uf` varchar(2) NOT NULL,
  `cid_situacao` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `cidade`
--

INSERT INTO `cidade` (`cid_cod`, `cid_nome`, `est_uf`, `cid_situacao`) VALUES
(1, 'ALTO BELA VISTA', 'SC', 1),
(2, 'ARABUTÃ', 'SC', 1),
(3, 'CONCÓRDIA', 'SC', 1),
(4, 'IPIRA', 'SC', 1),
(5, 'IPUMIRIM', 'SC', 1),
(6, 'IRANI', 'SC', 1),
(7, 'ITÁ', 'SC', 1),
(8, 'JABORÁ', 'SC', 1),
(9, 'LINDÓIA DO SUL', 'SC', 1),
(10, 'PERITIBA', 'SC', 1),
(11, 'PIRATUBA', 'SC', 1),
(12, 'PRESIDENTE CASTELLO BRANCO', 'SC', 1),
(13, 'SEARA', 'SC', 1),
(14, 'XAVANTINA', 'SC', 1),
(15, 'FLORIANOPOLIS', 'SC', 1),
(16, '', '', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `estabelecimento`
--

CREATE TABLE `estabelecimento` (
  `est_cod` int(11) NOT NULL,
  `est_nome` text NOT NULL,
  `est_cnpj` text NOT NULL,
  `est_descricao` text NOT NULL,
  `cid_cod` int(11) NOT NULL,
  `etp_cod` int(11) NOT NULL,
  `sim_cod` int(11) NOT NULL,
  `est_situacao` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `estabelecimento`
--

INSERT INTO `estabelecimento` (`est_cod`, `est_nome`, `est_cnpj`, `est_descricao`, `cid_cod`, `etp_cod`, `sim_cod`, `est_situacao`) VALUES
(1, 'NOME DA EMPRESA', '11.111.111/1111-11', 'TESTE TYESYTE4', 3, 1, 0, 1),
(2, 'NOME 23', '45.454.545/4545-45', 'TESTE TYESYTE4', 4, 2, 0, 1),
(3, 'TESTE', '77.777.777/7777-77', 'TESTE', 2, 3, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `estabelecimento_produto`
--

CREATE TABLE `estabelecimento_produto` (
  `esp_cod` int(11) NOT NULL,
  `esp_nome` text NOT NULL,
  `esp_un_med` int(11) NOT NULL COMMENT '1- KG\r\n2- L\r\n3- M2\r\n4- M3\r\n5- UN',
  `esp_qtd` int(11) NOT NULL,
  `est_cod` int(11) NOT NULL,
  `esp_situacao` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `estabelecimento_produto`
--

INSERT INTO `estabelecimento_produto` (`esp_cod`, `esp_nome`, `esp_un_med`, `esp_qtd`, `est_cod`, `esp_situacao`) VALUES
(1, 'SHAMUPU ', 5, 2, 1, 1),
(2, 'SHAMUPU ', 5, 2, 1, 1),
(3, 'SHAMPU', 2, 8, 1, 1),
(4, 'SHAMPIU', 2, 7, 1, 1),
(5, 'ESPONJA MULTIUSO', 4, 7, 2, 1),
(6, 'JHGJHG', 2, 40, 2, 1),
(7, 'BOMBRIL', 2, 5, 2, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `estabelecimento_tipo`
--

CREATE TABLE `estabelecimento_tipo` (
  `etp_cod` int(11) NOT NULL,
  `etp_descricao` text NOT NULL,
  `etp_situacao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `estabelecimento_tipo`
--

INSERT INTO `estabelecimento_tipo` (`etp_cod`, `etp_descricao`, `etp_situacao`) VALUES
(1, 'FRIGORÍFICO', 1),
(2, 'INDUSTRIA', 2),
(3, 'TELE DOS GURI\r\n', 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `rnc`
--

CREATE TABLE `rnc` (
  `rnc_cod` int(11) NOT NULL,
  `rnc_data` date NOT NULL,
  `rnc_desc` text NOT NULL,
  `rnc_sol_sim` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura para tabela `setor`
--

CREATE TABLE `setor` (
  `set_cod` int(11) NOT NULL,
  `set_nome` varchar(30) NOT NULL,
  `set_responsavel` int(11) NOT NULL,
  `set_descricao` text NOT NULL,
  `set_situacao` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `setor`
--

INSERT INTO `setor` (`set_cod`, `set_nome`, `set_responsavel`, `set_descricao`, `set_situacao`) VALUES
(1, 'CONTABILIDADE', 1, 'O setor de contabilidade registra, analisa e interpreta os dados financeiros da empresa para garantir conformidade legal e sucesso nos negócios.', 1),
(2, 'PROCESSOS SELETIVOS E CONCURSO', 2, 'O setor de processos seletivos e concursos é responsável por planejar, organizar e executar todas as etapas do processo de seleção de candidatos para vagas de emprego ou cargos públicos, utilizando critérios claros e objetivos para avaliar as habilidades e competências dos candidatos e garantir a escolha dos mais qualificados.\r\n', 1),
(3, 'SERVIÇO SOCIAL', 3, 'O Serviço Social é responsável por promover o bem-estar social, atuando em áreas como saúde, educação, assistência social e justiça. Os profissionais dessa área realizam atendimento, orientação, acompanhamento e intervenções para garantir direitos e melhorar as condições de vida das pessoas em situação de vulnerabilidade social, utilizando técnicas e estratégias específicas para cada caso.', 1),
(4, 'COMUNICAÇÃO', 4, 'O setor de comunicação é responsável por planejar, desenvolver e executar estratégias de comunicação interna e externa da empresa, utilizando diferentes meios e canais para transmitir informações, ideias e valores da organização. Ele atua na criação de campanhas publicitárias, gerenciamento de redes sociais, produção de conteúdo e relacionamento com a imprensa, visando promover a imagem da empresa, fortalecer a sua marca e estabelecer uma comunicação eficiente com seus públicos.', 1),
(5, 'ENGENHARIA', 5, 'O setor de engenharia é responsável por desenvolver projetos, soluções e inovações para atender às necessidades técnicas e operacionais da empresa. Ele abrange diferentes áreas da engenharia, como civil, elétrica, mecânica, química e de produção, e utiliza ferramentas e tecnologias avançadas para projetar, construir, manter e otimizar os processos e equipamentos da empresa. O setor de engenharia também trabalha na garantia da segurança e qualidade das atividades desenvolvidas, além de buscar melhorias contínuas nos processos e produtos.', 1),
(6, 'ARQUITETURA', 6, 'O setor de arquitetura é responsável por projetar e gerenciar a construção de edificações, espaços e ambientes que atendam às necessidades e expectativas da empresa. Ele atua na concepção dos projetos, desde a análise do espaço e suas possibilidades, passando pela elaboração dos desenhos e especificações técnicas, até o acompanhamento da obra. O setor de arquitetura também trabalha na busca por soluções sustentáveis e inovadoras para os projetos, visando a harmonia com o meio ambiente e a eficiência energética.', 1),
(7, 'TOPOGRAFIA', 7, 'O setor de topografia é responsável por realizar levantamentos e medições de terrenos, áreas e construções, utilizando técnicas e equipamentos específicos para garantir a precisão das informações coletadas. Ele atua no mapeamento do terreno, elaboração de plantas e mapas, além de fornecer informações importantes para a elaboração de projetos de engenharia e arquitetura. O setor de topografia também trabalha na identificação e correção de possíveis problemas relacionados ao terreno, como desnivelamentos e irregularidades, visando garantir a segurança e qualidade das construções realizadas.', 1),
(8, 'INFORMÁTICA', 8, 'O setor de informática é responsável por gerenciar a infraestrutura de tecnologia da informação da empresa, incluindo hardware, software, redes e sistemas. Ele atua no desenvolvimento, manutenção e suporte técnico aos sistemas de informação, garantindo a segurança, confiabilidade e disponibilidade das informações utilizadas pelos usuários da empresa.', 1),
(9, 'MOVIMENTO ECONÔMICO', 9, 'O setor de movimento econômico é responsável por gerenciar as atividades financeiras da empresa, como contas a pagar e receber, fluxo de caixa, orçamento e investimentos. Ele atua no controle e análise dos dados financeiros da empresa, buscando identificar oportunidades de redução de custos, aumento de receitas e melhorias nos resultados financeiros. O setor de movimento econômico também trabalha no planejamento financeiro de curto, médio e longo prazo da empresa, visando a sua sustentabilidade e crescimento.', 1),
(72, 'FINANCEIRO', 10, 'FINANCEIRO', 1),
(73, 'CONSORCIO LAMBARI', 1, 'O CONSÓRCIO LAMBARI É CONSTITUÍDO COMO UMA ASSOCIAÇÃO PÚBLICA, COM PERSONALIDADE JURÍDICA DE DIREITO PÚBLICO, SEM FINS LUCRATIVOS, COM AUTONOMIA ADMINISTRATIVA, FINANCEIRA E PATRIMONIAL, REGENDO-SE PELO PRESENTE ESTATUTO, PELA LEI Nº 11.107/2005, PELO DECRETO FEDERAL Nº 6.017/07 E DEMAIS LEGISLAÇÕES PERTINENTES A MATÉRIA. A SEDE DO CONSÓRCIO LAMBARI É NO MUNICÍPIO DE CONCÓRDIA, ESTADO DE SANTA CATARINA, LOCALIZADO À RUA MARECHAL DEODORO, 772, 12º ANDAR – EDIFÍCIO MIRAGE OFFICE – CENTRO.', 1),
(74, 'CISAMAUC', 32, 'CRIADO NO ANO DE 2005 O CONSÓRCIO INTERMUNICIPAL DE SAÚDE DO ALTO URUGUAI CATARINENSE - CIS/AMAUC, VEIO COM O OBJETIVO DE ASSEGURAR A PRESTAÇÃO DE SERVIÇOS DE SAÚDE ESPECIALIZADOS, DE REFERÊNCIA E DE MAIOR COMPLEXIDADE EM NÍVEL AMBULATORIAL PARA A POPULAÇÃO DOS MUNICÍPIOS CONSORCIADOS, DE CONFORMIDADE COM AS DIRETRIZES DO SUS, ASSEGURANDO O ESTABELECIMENTO DE UM SISTEMA DE REFERÊNCIA E CONTRARREFERÊNCIA EFICIENTE E EFICAZ.', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `sim`
--

CREATE TABLE `sim` (
  `sim_cod` int(11) NOT NULL,
  `sim_titulo` text NOT NULL,
  `sim_responsavel` text NOT NULL,
  `sim_email` text NOT NULL,
  `sim_telefone` text NOT NULL,
  `cid_cod` int(11) NOT NULL,
  `sim_plano` text NOT NULL,
  `sim_situacao` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `sim`
--

INSERT INTO `sim` (`sim_cod`, `sim_titulo`, `sim_responsavel`, `sim_email`, `sim_telefone`, `cid_cod`, `sim_plano`, `sim_situacao`) VALUES
(1, 'SIM 1', 'RAFAEL CORDEIRO DE ALMEIDA', 'rafaelcordeiro299@gmail.com', '(11) 9828-29179', 4, '', 1),
(2, 'TITULO', 'RESPONSACVEL', 'email@emaiç.com', '(11) 2233-44556', 2, '', 1),
(3, 'TIUTLO', 'AOLKSD', 'ospiduf', '(00) 2020-20202', 2, 'arquivos/plano-de-servico/20230802084036Texto Simarelli ATS.docx', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `usu_cod` int(11) NOT NULL,
  `usu_nome` varchar(100) NOT NULL,
  `usu_login` varchar(50) NOT NULL,
  `usu_senha` varchar(40) NOT NULL,
  `usu_email` varchar(200) DEFAULT NULL,
  `cid_cod` int(11) NOT NULL,
  `upe_cod` int(11) NOT NULL COMMENT 'usuario_permissao',
  `sim_cod` int(11) NOT NULL,
  `usu_situacao` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `usuario`
--

INSERT INTO `usuario` (`usu_cod`, `usu_nome`, `usu_login`, `usu_senha`, `usu_email`, `cid_cod`, `upe_cod`, `sim_cod`, `usu_situacao`) VALUES
(1, 'Administrador Geral', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@gmail.com', 0, 1, 0, 1),
(3, 'RAIS - TESTE', 'rais', '21232f297a57a5a743894a0e4a801fc3', 'rais@gmail.com', 1, 2, 0, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario_permissao`
--

CREATE TABLE `usuario_permissao` (
  `upe_cod` int(11) NOT NULL,
  `upe_descricao` text NOT NULL,
  `upe_situacao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `usuario_permissao`
--

INSERT INTO `usuario_permissao` (`upe_cod`, `upe_descricao`, `upe_situacao`) VALUES
(1, 'Administrador - CIDEMA', 1),
(2, 'SIM - (Serviços de Inspeção Municipal)', 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `analise_laboratorial`
--
ALTER TABLE `analise_laboratorial`
  ADD PRIMARY KEY (`anl_cod`);

--
-- Índices de tabela `aviso`
--
ALTER TABLE `aviso`
  ADD PRIMARY KEY (`avi_cod`);

--
-- Índices de tabela `cidade`
--
ALTER TABLE `cidade`
  ADD PRIMARY KEY (`cid_cod`);

--
-- Índices de tabela `estabelecimento`
--
ALTER TABLE `estabelecimento`
  ADD PRIMARY KEY (`est_cod`);

--
-- Índices de tabela `estabelecimento_produto`
--
ALTER TABLE `estabelecimento_produto`
  ADD PRIMARY KEY (`esp_cod`);

--
-- Índices de tabela `estabelecimento_tipo`
--
ALTER TABLE `estabelecimento_tipo`
  ADD PRIMARY KEY (`etp_cod`);

--
-- Índices de tabela `rnc`
--
ALTER TABLE `rnc`
  ADD PRIMARY KEY (`rnc_cod`);

--
-- Índices de tabela `setor`
--
ALTER TABLE `setor`
  ADD PRIMARY KEY (`set_cod`);

--
-- Índices de tabela `sim`
--
ALTER TABLE `sim`
  ADD PRIMARY KEY (`sim_cod`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usu_cod`);

--
-- Índices de tabela `usuario_permissao`
--
ALTER TABLE `usuario_permissao`
  ADD PRIMARY KEY (`upe_cod`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `analise_laboratorial`
--
ALTER TABLE `analise_laboratorial`
  MODIFY `anl_cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `aviso`
--
ALTER TABLE `aviso`
  MODIFY `avi_cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `cidade`
--
ALTER TABLE `cidade`
  MODIFY `cid_cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `estabelecimento`
--
ALTER TABLE `estabelecimento`
  MODIFY `est_cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `estabelecimento_produto`
--
ALTER TABLE `estabelecimento_produto`
  MODIFY `esp_cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `estabelecimento_tipo`
--
ALTER TABLE `estabelecimento_tipo`
  MODIFY `etp_cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `rnc`
--
ALTER TABLE `rnc`
  MODIFY `rnc_cod` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `setor`
--
ALTER TABLE `setor`
  MODIFY `set_cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT de tabela `sim`
--
ALTER TABLE `sim`
  MODIFY `sim_cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usu_cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `usuario_permissao`
--
ALTER TABLE `usuario_permissao`
  MODIFY `upe_cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
