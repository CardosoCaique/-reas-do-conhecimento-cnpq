SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- --------------------------------------------------------

--
-- Estrutura da tabela `areas`
--

CREATE TABLE `areas` (
  `id` bigint UNSIGNED NOT NULL,
  `definicao` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `areas`
--

INSERT INTO `areas` (`id`, `definicao`, `created_at`, `updated_at`) VALUES
(1, 'Ciências Exatas e da Terra', NULL, NULL),
(2, 'Ciências Biológicas', NULL, NULL),
(3, 'Engenharias', NULL, NULL),
(4, 'Ciências da Saúde ', NULL, NULL),
(5, 'Ciências Agrárias', NULL, NULL),
(6, 'Ciências Sociais Aplicadas', NULL, NULL),
(7, 'Ciências Humanas', NULL, NULL),
(8, 'Lingüística, Letras e Artes', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `subareas`
--

CREATE TABLE `subareas` (
  `id` bigint UNSIGNED NOT NULL,
  `area_id` bigint UNSIGNED NOT NULL,
  `titulo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `subareas`
--

INSERT INTO `subareas` (`id`, `area_id`, `titulo`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ciências da Computação', NULL, NULL),
(2, 1, 'Matemática', NULL, NULL),
(3, 1, 'Probabilidade e Estatística', NULL, NULL),
(4, 1, 'Astronomia', NULL, NULL),
(5, 1, 'Física', NULL, NULL),
(6, 1, 'Química', NULL, NULL),
(7, 1, 'GeoCiências', NULL, NULL),
(8, 1, 'Oceanografia', NULL, NULL),
(9, 2, 'Biologia Geral', NULL, NULL),
(10, 2, 'Genética', NULL, NULL),
(11, 2, 'Botânica', NULL, NULL),
(12, 2, 'Zoologia', NULL, NULL),
(13, 2, 'Ecologia', NULL, NULL),
(14, 2, 'Morfologia', NULL, NULL),
(15, 2, 'Fisiologia', NULL, NULL),
(16, 2, 'Bioquímica', NULL, NULL),
(17, 2, 'Biofísica', NULL, NULL),
(18, 2, 'Farmacologia', NULL, NULL),
(19, 2, 'Imunologia', NULL, NULL),
(20, 2, 'Microbiologia', NULL, NULL),
(21, 2, 'Parasitologia', NULL, NULL),
(22, 3, 'Engenharia Civil', NULL, NULL),
(23, 3, 'Engenharia de Minas', NULL, NULL),
(24, 3, 'Engenharia de Materiais e Metalúrgica', NULL, NULL),
(25, 3, 'Engenharia Elétrica', NULL, NULL),
(26, 3, 'Engenharia Mecânica', NULL, NULL),
(27, 3, 'Engenharia Química', NULL, NULL),
(28, 3, 'Engenharia Sanitária', NULL, NULL),
(29, 3, 'Engenharia de Produção', NULL, NULL),
(30, 3, 'Engenharia Nuclear', NULL, NULL),
(31, 3, 'Engenharia de Transportes', NULL, NULL),
(32, 3, 'Engenharia Naval e Oceânica', NULL, NULL),
(33, 3, 'Engenharia Aeroespacial', NULL, NULL),
(34, 3, 'Engenharia Biomédica', NULL, NULL),
(35, 4, 'Medicina', NULL, NULL),
(36, 4, 'Odontologia', NULL, NULL),
(37, 4, 'Farmácia', NULL, NULL),
(38, 4, 'Enfermagem', NULL, NULL),
(39, 4, 'Nutrição', NULL, NULL),
(40, 4, 'Saúde Coletiva', NULL, NULL),
(41, 4, 'Fonoaudiologia', NULL, NULL),
(42, 4, 'Fisioterapia e Terapia Ocupacional', NULL, NULL),
(43, 4, 'Educação Física', NULL, NULL),
(44, 5, 'Agronomia', NULL, NULL),
(45, 5, 'Recursos Florestais e Engenharia Florestal', NULL, NULL),
(46, 5, 'Engenharia Agrícola', NULL, NULL),
(47, 5, 'Zootecnia', NULL, NULL),
(48, 5, 'Medicina Veterinária', NULL, NULL),
(49, 5, 'Recursos Pesqueiros e Engenharia de Pesca', NULL, NULL),
(50, 5, 'Ciência e Tecnologia de Alimentos', NULL, NULL),
(51, 6, 'Direito', NULL, NULL),
(52, 6, 'Administração', NULL, NULL),
(53, 6, 'Economia', NULL, NULL),
(54, 6, 'Arquitetura e Urbanismo', NULL, NULL),
(55, 6, 'Planejamento Urbano e Regional', NULL, NULL),
(56, 6, 'Demografia', NULL, NULL),
(57, 6, 'Ciência da Informação', NULL, NULL),
(58, 6, 'Museologia', NULL, NULL),
(59, 6, 'Comunicação', NULL, NULL),
(60, 6, 'Serviço Social', NULL, NULL),
(61, 6, 'Economia Doméstica', NULL, NULL),
(62, 6, 'Desenho Industrial', NULL, NULL),
(63, 7, 'Filosofia', NULL, NULL),
(64, 7, 'Sociologia', NULL, NULL),
(65, 7, 'Antropologia', NULL, NULL),
(66, 7, 'Arqueologia', NULL, NULL),
(67, 7, 'História', NULL, NULL),
(68, 7, 'Geografia', NULL, NULL),
(69, 7, 'Psicologia', NULL, NULL),
(70, 7, 'Educação', NULL, NULL),
(71, 7, 'Ciência Política', NULL, NULL),
(72, 7, 'Teologia', NULL, NULL),
(73, 8, 'Linguística', NULL, NULL),
(74, 8, 'Letras', NULL, NULL),
(75, 8, 'Artes', NULL, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `subareas`
--
ALTER TABLE `subareas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subareas_area_id_foreign` (`area_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `areas`
--
ALTER TABLE `areas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `subareas`
--
ALTER TABLE `subareas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
