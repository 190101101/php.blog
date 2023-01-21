-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Янв 21 2023 г., 18:58
-- Версия сервера: 10.4.27-MariaDB
-- Версия PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `blog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `article`
--

CREATE TABLE `article` (
  `article_id` int(11) NOT NULL,
  `article_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `article_slug` varchar(50) NOT NULL,
  `article_text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `article_code` longtext NOT NULL,
  `article_status` int(11) NOT NULL DEFAULT 1,
  `article_key` int(11) NOT NULL DEFAULT 1,
  `article_view` int(11) NOT NULL,
  `article_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `article_updated` timestamp NOT NULL DEFAULT current_timestamp(),
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `article`
--

INSERT INTO `article` (`article_id`, `article_title`, `article_slug`, `article_text`, `article_code`, `article_status`, `article_key`, `article_view`, `article_created`, `article_updated`, `category_id`) VALUES
(1, 'Ismi Azam Salavatı ve Faziletleri', 'Ismi-Azam-Salavatı-ve-Faziletleri', '<h3><strong>C&uuml;bbeli Ahmet Mahmut &Uuml;nl&uuml; Hoca Efendi Hazretleri</strong></h3>\r\n\r\n<p><iframe allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/DLA-iLnHEeg\" title=\"YouTube video player\" width=\"100%\"></iframe></p>\r\n\r\n<p><img alt=\"\" src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhjXDMfib25WQQxA1J8ftCXveLb8KAuOB3bSFaaOBgqL_eJ_u6HLMrxB9PcmfFXt6_CrpmjubTRY8o_mOGhwaAwGwnqiuo2R0_0vNM66x2CBBriWrps3PGToZGMkUQrt8bR4ODKZ5CyRKA-B3DC5-wQlTaLfycmfToUVEU2HEbpXGrsBGp7l23BE_sP/w640-h252/ismiazamsavalati.jpg\" style=\"width: 700px; height: 275px;\" /></p>\r\n\r\n<p><strong>Bismillahirrahm&acirc;nirrah&icirc;m</strong></p>\r\n\r\n<p><b>All&acirc;h&uuml;mme inn&icirc; es-el&uuml;ke bismikel a&#39;zamil mekt&ucirc;bi min n&ucirc;ri vechikel a&#39;lel m&uuml;ebbedid-d&acirc;imil b&acirc;qil muhalledi f&icirc; qalbi nebiyyike ve ras&ucirc;like Muhammed. Ve es-el&uuml;ke bismikel a&#39;zamil v&acirc;hidi bi vahdetil ehad. El m&uuml;te&acirc;l&icirc; an vahdetil kemmi vel aded. El muqaddesi an k&uuml;lli ehad. Bi haqqi: &#39;&#39;Bismill&acirc;hirrahm&acirc;nirrah&icirc;m. qul huvall&acirc;hu ehad. All&acirc;hussamed. Lem yelid ve lem y&ucirc;led. Ve lem yek&uuml;lleh&ucirc; k&uuml;f&uuml;ven ehad.&#39;&#39; En t&uuml;salliye al&acirc; seyyidin&acirc; Muhammedin sirri hay&acirc;til vuc&ucirc;di vessebebil a&#39;zami lik&uuml;lli mevc&ucirc;din sal&acirc;ten t&uuml;sebbit&uuml; f&icirc; qalbil &icirc;m&acirc;ne ve t&uuml;haffizunil qur-&acirc;ne ve t&uuml;fehhimun&icirc; minhul &acirc;y&acirc;ti ve teftehu l&icirc; bih&acirc; n&ucirc;ral cenn&acirc;ti ve n&ucirc;ranna&icirc;mi ve n&ucirc;rannazari il&acirc; vechikel ker&icirc;mi ve al&acirc; &acirc;lih&icirc; ve sahbih&icirc; ve sellim.&nbsp;</b></p>\r\n\r\n<p>Ey All&acirc;h! Ş&uuml;phesiz ben Senden; o y&uuml;ce,m&uuml;ebbed,daim ve ebedi olan Z&acirc;tın&rsquo;ın(yaratttığı o m&uuml;barek) n&ucirc;rundan;O Peygamberlerin ve Ras&ucirc;l&uuml;n Muhammed(Aleyhisselam)&rsquo;ın kalbine yazılmış olan o En b&uuml;y&uuml;k İsmin h&uuml;rmetine istiyorum.Yine elbette ki ben Senden(ikincisi ve &uuml;&ccedil;&uuml;nc&uuml;s&uuml; olan sayılar itibariyle değilde) ehadiyyetin birliği ile tek olan,kemmiyet ve adedin tekliğinden de y&uuml;ce ve herkesten(de herşeyden de)Mukaddes olan İsm-i &Acirc;zam&rsquo;ın bahşına istiyorum<br />\r\nVe nih&acirc;i olarak da):O Rahman ve o Rahim olan Allah&rsquo;ın ismiyle! de ki: &ldquo;O Allah&rsquo;tır,Ehad&rsquo;dir.Ancak All&acirc;h Samed&rsquo;dir(hi&ccedil;bir kimseye muhta&ccedil; olmayıp herkes kendisine muhta&ccedil; olandır).O doğurmamıştır ve doğrulmamıştır.Hi&ccedil;bir kimse O&rsquo;na denk de olmamıştır.&rdquo;(me&acirc;lindeki İhl&acirc;s S&ucirc;resi) hakkı i&ccedil;in diliyorum ki;varlık &acirc;leminin v&acirc;r olmasının sırrı ve her bir mevcur(yaratılmış) i&ccedil;in en b&uuml;y&uuml;k (var olma) sebeb&rsquo;i olan Efendimiz Muhammed&rsquo;e &ouml;yle bir sal&acirc;t ile sal&acirc;t edesin ki o sal&acirc;t;kalbimde im&acirc;nı sabit kılsın,bana Kur&rsquo;an-ı Kerim&rsquo;i ezberletsin,ondaki &acirc;yet-i kerimleri bana anlama kabiliyeti sağlasın,onunla bana(um&ucirc;men) cennetlerin n&ucirc;runu,(hususen de) Na&rsquo;im cennetinin n&ucirc;runu ve Keremli Z&acirc;tın&rsquo;ı m&uuml;ş&acirc;hedenin nurunu a&ccedil;asın.(Ey All&acirc;h! Efendimiz&rsquo;e)Ehl-i Beyti&rsquo;ne ve sah&acirc;besine (de bu sal&acirc;tl beraber &ccedil;okca selam eyle.&rdquo;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Yusuf ibni İsma&#39;il en-Nebhani (Rahimehullah)&rsquo;ın: Se&#39;adet&uuml;&#39;d-dareyn fi&#39;s-salati &#39;ala Seyyidi&#39;l-Kevneyn (Sallallahu Aleyhi ve Sellem) isimli eserinde: Hakkında bir&ccedil;ok fazilet zikrettiği bir salat-&uuml; selam vardır ki o da şudur:<br />\r\nBu salevat-ı şerife b&uuml;y&uuml;k veli, arif-i billah Şeyh Muhammed<br />\r\nTakiy&uuml;ddin ed-Dimeşki el-Hanbeli (Kuddise Sirruhu) Hazretleri&#39;ne aittir.<br />\r\nBu salevat-ı şerifenin fevaidi (faydaları) hakkında m&uuml;stakil bir risale vardır ki sahibi bu salevat-ı şerifede<br />\r\nİsm-i Azam&#39;ı zikretmiştir.<br />\r\nBu salevat-ı şerifeyi okumanın faydalarından bazılarını sayacak olursak:<br />\r\n1. Bu salevat-ı şerifeyi (herg&uuml;n 100 kere) okuyan,Evliyaullahtan (Allah-u Te&#39;ala&#39;nın &ouml;zel dostlarından) olur.<br />\r\n2. Bu salevat-ı şerifeyi (her g&uuml;n 1000 kere) okuyabilen kişi:<br />\r\nGayptan infak eder yani ge&ccedil;iminin nereden geldiğini anlamayacak &nbsp;şekilde kendisine bir bereket ihsan edilip hi&ccedil; bitmeden harcar harcar t&uuml;kenmez.<br />\r\n3. Bu salevat-ı şerife cumayı cumartesiye bağlayan gece bir zalimi helak etmek i&ccedil;in (1000 kere) okunursa:<br />\r\nOnun helaki i&ccedil;in &ccedil;ok ilgin&ccedil; haller zuhur eder.<br />\r\n4. Yol kesen eşkiya veya başka tehlikeli hadiseler karşısında, sol ayağın altından alınan bir avu&ccedil; toprak &uuml;zerine bu salevat-ı şerife (7 kere) okunup, sonra d&uuml;şmanların bulunduğu cihete doğru, yukarı tarafa atıldığı zaman anında d&uuml;şmanlar canibinde helak &nbsp;vaki olur.<br />\r\n5. Bu salevat-ı şerife aşağıda zikredilecek niyetlerden hangisi i&ccedil;in &nbsp;(7 kere) okunursa o murad hasıl olur.<br />\r\na. Kaybolan bir şey bulunur.<br />\r\nb. Ka&ccedil;an bir şey geri gelir.<br />\r\nc. &Ccedil;alınan bir mal iade edilir.<br />\r\nd. Yağma edilen bir mal iade olunur.<br />\r\ne. Emanet alınan şey selametle geri d&ouml;ner.<br />\r\nf. Verilen bor&ccedil; zayi olmayıp geri &ouml;denir.<br />\r\nAncak her seferinde sevabının<br />\r\nRasul&uuml;llah (Sallallahu Aleyhi ve Sellem)&rsquo;e,Ehl-i Beyti&#39;ne, sahabesine, dostlarına, rical-i ğayba ve n&ouml;bet<br />\r\neshabına (d&uuml;nyada g&ouml;revli tasarruf sahibi velilere) ve onların reisine ulaşmasına niyet edilerek bu salevat-ı şerife okunur.Ayrıca okuyan kişi istediği şeyin ger&ccedil;ekleşmesi durumunda:<br />\r\nRasul&uuml;llah (Sallallahu Aleyhi ve Sellem)&rsquo;in,Ehl-i Beyti&#39;nin, sahabesinin, evliyaullahın ve dostlarının adına<br />\r\nfakirlere, miskinlere ve yetimlere biraz tatlı ve yiyecekler ikram edeceğine baştan niyet ederse, bu durumda muradının hasıl olması daha kuvvetle muhtemeldir ki haceti hasıl olduğunda da bunu ger&ccedil;ekleştirmelidir.<br />\r\n6. Bu salevat-ı şerife g&uuml;nn&uuml;k buhurunun &uuml;zerine okunup,hasta olan kişi bununla t&uuml;ts&uuml;lenirse:<br />\r\nHangi hastalık olursa olsun Allah-u Te&#39;ala&#39;nın izniyle iyileşir.<br />\r\n7. Baş ağrısı, migren, sıtma, g&ouml;z iltihabı ve g&ouml;zlerle ilgili hastalıklar i&ccedil;in g&uuml;l suyuna:<br />\r\nHer birinin evvelinde (bir Fatiha) okunarak,bu salevat-ı şerife (7 kere) okunur ve ardından hasta<br />\r\nbu suyu v&uuml;cuduna s&uuml;rerse,Allah-u Te&#39;ala&#39;nın izniyle anında afiyete kavuşur.<br />\r\n8. Herhangi bir hastanın yahut yılan ya da akrep tarafından sokulan kişinin şifası i&ccedil;in:<br />\r\nBu salevat-ı şerife her birinin evvelinde (bir Fatiha) okunarak,su &uuml;zerine toplam (7 kere) okunduktan sonra,hasta olan kişi bu sudan v&uuml;cuduna s&uuml;rer ve i&ccedil;erse,Allah-u Te&#39;ala&#39;nın izniyle şifa bulur.<br />\r\n9. S&uuml;t&uuml; ka&ccedil;mış emziren bir anneninya da (inek gibi) bir hayvanın s&uuml;t&uuml; bol olsun diye,bu salevat-ı şerife her birinin evelinde (bir Fatiha) okunarak,kaynak suyu &uuml;zerine toplam (7 kere) okunup sonra,s&uuml;t&uuml; bollaşması istenen kişiye i&ccedil;irilirve s&uuml;t b&ouml;lgesine o sudan s&uuml;r&uuml;l&uuml;rse,Allah-u Te&#39;ala&#39;nın izniyle s&uuml;t&uuml; bolca akar.<br />\r\n10. Doğum zorluğu, idrar sıkışması ve bel soğukluğu bulunan kişiler i&ccedil;in:Bu salevat-ı şerife her birinin evvelinde (bir Fatiha) okunarak, buhura veya suya ya da yağa veyahut da merhem &uuml;zerine okunarak v&uuml;cuttaki o b&ouml;lgelere s&uuml;r&uuml;l&uuml;rse,Allah-u Te&#39;ala&#39;nın izniyle maksad hasıl olur.<br />\r\n11. Kendisinde cinlerden sebep bir rahatsızlıkbulunan kişinin şifası i&ccedil;in:Bu salevat-ı şerife bir bez par&ccedil;asına okunup hastanın başına bağlanırsa,<br />\r\nAllah-u Te&#39;ala&#39;nın izniyle şifa bulur.<br />\r\n12. Bu salevat-ı şerife (1-3-7) gibi tek sayılar &uuml;zere (7 kere) olsa iyi olur.<br />\r\nBir su &uuml;zerine okunup o su uyumadan &ouml;nce i&ccedil;ilirse:<br />\r\nAllah-u Te&#39;ala&#39;nın izniyle o kişi şu dertlerden kurtulur:<br />\r\na. Korkutucu r&uuml;yalar.<br />\r\nb. Panikatak gibi durumlar.<br />\r\nc. Unutkanlık.<br />\r\nd. Nefes darlığı.<br />\r\ne. G&ouml;ğ&uuml;s ağrısı.<br />\r\nf. Yel girmesinden dolayı hasıl olan rahatsızlık.<br />\r\ng. Kulun&ccedil; ağrıları.<br />\r\nh. Uykusuzluk.<br />\r\nI. Kalp &ccedil;ırpıntısı.<br />\r\n13. Bu salevat-ı şerifenin yazılı bulunduğu kağıt bir d&uuml;kkana asılırsa:<br />\r\na. Orada g&uuml;zel haller zuhur eder.<br />\r\nb. İnsanlara makbul g&ouml;r&uuml;n&uuml;r.<br />\r\nc. Alışveriş &ccedil;oğalır.<br />\r\nd. Ticaret, kar ve bereket fazla olur.<br />\r\n14. Satılmak istenilen bir eşyanınya da evlendirilmek istenilen bir kızın &uuml;zerine:<br />\r\nBu salevat-ı şerife okunup &uuml;flenirse ona karşı rağbet artar ve bakanlara karşı onda g&uuml;zellik zuhur eder.<br />\r\n15. Rasul&uuml;llah (Sallallahu Aleyhi ve Sellem) yada Hızır (Aleyhisselam)&rsquo;ı r&uuml;yada g&ouml;rmek isteyen veya<br />\r\nbir şeyin akıbetini merak edip ne olacağını bilmek isteyen yahut &nbsp;d&uuml;nyası ve ahireti i&ccedil;in faydalı bir şey &ouml;ğrenmek isteyen kişi: Uyurken başının yanında da g&uuml;l suyu (g&uuml;l yağı ya da ud kokusu) &nbsp;gibi hoş kokulu bir şey bulundurarak, bu salevat-ı şerifeyi (100 kere) okur ve abdestli bir vaziyette &nbsp;kıbleye doğru uyur.<br />\r\nB&ouml;yle yaparsa o insanın niyet ettiği yani g&ouml;rmek istediği şeyle ilgiliRasul&uuml;llah (Sallallahu Aleyhi ve Sellem)&rsquo;in ruhaniyeti ona temess&uuml;l eder.<br />\r\nTabi ki bu mesele, kişinin kabiliyetine g&ouml;re değişir.Himmeti ne kadar g&uuml;&ccedil;l&uuml;yse, ruhani suret daha belirgin olur.B&ouml;ylece o kişiye, merak ettiği şeylerle ilgili bilgiler ruhaniyetten akıtılır ve kitaplarda bulunamayacak malumat kendisine verilir.<br />\r\nBir insan (40 g&uuml;n) ihlaslı bir şekilde bu hal &uuml;zere devam ederse:<br />\r\na. Hikmet pınarları kalbinden diline vurur.<br />\r\nb. Keşif ehlinden olur.<br />\r\nc. Kabul nurlarıyla boyanır.<br />\r\nd. Nurlar ona şekillenip g&ouml;z&uuml;k&uuml;r.<br />\r\nAma bu duruma ulaşan kişi sırrını gizlemelidir ki işi ge&ccedil;erli olsun.<br />\r\nYoksa sırları ifşa ettiği i&ccedil;in velilerin divanından silinir.<br />\r\nYine de insan, mevcut olana razı gelmelidir.<br />\r\n&Ccedil;&uuml;nk&uuml; en faydalı şey odur. Gayb aleminden perde a&ccedil;ılsa da insan yine başına geleni se&ccedil;er, zira en hayırlısı kişinin başına gelendir.<br />\r\n16. Aşağıda bu salevat-ı şerife ile ilgli bir terkip zikredeceğiz ki,bu amel işlendiğinde sıralayacağımız maddelerdekimuratlar hasıl olur:<br />\r\na. Ka&ccedil;an biri geri gelir.<br />\r\nb. Saralı biri bayıldığında ayılır.<br />\r\nc. B&uuml;y&uuml;den dolayı (cimadan) bağlı olan &ccedil;&ouml;z&uuml;l&uuml;r.<br />\r\nd. Kendisine sihir etki eden kişi b&uuml;y&uuml;den kurtulur.<br />\r\ne. Hapisteki kişi serbest kalır.<br />\r\nf. Esir olan kurtulur.<br />\r\ng. Gamı, kederi ve h&uuml;zn&uuml; olanın derdi zail olur.<br />\r\nh. Bor&ccedil;lu kişi bor&ccedil;larından kurtulur.<br />\r\nI. Sevilmeyen ve itibarsız durumda olan kişi insanlar tarafından sevilir.<br />\r\nj. Toplumdan dışlanan kişi itibar kazanır.<br />\r\nk. Fel&ccedil;li kişi fel&ccedil;ten kurtulur.<br />\r\nl. Hasta kişi derdinden şifa bulur.<br />\r\nm. Sıtmaya tutulan kişi deva bulur.<br />\r\nn. Cinlenmiş kişi, başına gelen bu sıkınudan kurtulur.<br />\r\no. Hamile kadın kolayca doğum yapar.<br />\r\nYukarıda zikredilen muratların husul&uuml; i&ccedil;in şu terkip uygulanır:<br />\r\nBir ukiyye (119 gram) halis zeytinyağı beyaz bir cam kaba,o kap da k&uuml;&ccedil;&uuml;k bir k&uuml;p&uuml;n i&ccedil;ine konularak, evin ya da bulunduğu yerin kıble duvarının &ouml;n&uuml;ne konulur.<br />\r\nBununla beraber g&uuml;nn&uuml;k (g&uuml;nl&uuml;k) buhuru yakılır ve buna cavi (benjamin) bitkisi ve kişniş yaprağı da katılırsa daha g&uuml;zel olur.Zira beyaz g&uuml;nn&uuml;k (g&uuml;nl&uuml;k) evliya ve salihlerin amberidir.<br />\r\nBu buhurlar da yakılırsa icabet-i ervah tarafından tesiri (ruhanilerin maksatların husul&uuml; i&ccedil;in devreye girmeleri) &ccedil;abuk olur.<br />\r\nSonra (2 rekat) (hacetin husul&uuml; i&ccedil;in hacet namazı) kılınıp sevabı Rasul&uuml;llah (Sallallahu Aleyhi ve Sellem)&rsquo;e , Ehl-i Beyti&#39;ne, sahabesine ve dostlarına hediye olarak bağışlanır.<br />\r\nBunların ardından kıbleye m&uuml;teveccih (y&ouml;nelmiş) olarak,i&ccedil;inde zeytinyağının bulunduğu kabın mevcut olduğu k&uuml;&ccedil;&uuml;k k&uuml;p&uuml;n &uuml;zerine el konularak, İsm-i Azam mesabesinde olan bu<br />\r\nsalevat-ı şerife (1000 kere) okunur.Kıraat tamamlanınca yine (2 rekat) Allah rızası i&ccedil;in namaz kılınıp keza sevabı Rasul&uuml;llah (Sallallahu Aleyhi ve Sellem)&rsquo;e, Ehl-i Beyti&#39;ne, sahabesine ve dostlarına hediye edilir.<br />\r\nBu vazifeler biter bitmez oracıkta zeytinyağından bir miktar yenilir ve yine aynı mahalde tutulan bu zeytinyağından(o g&uuml;nle beraber toplam 3 g&uuml;n olmak &uuml;zere)2 g&uuml;n daha ya da daha fazla s&uuml;reyle yenilirse, hacet sahibinin muradı hasıl olur ve bir&ccedil;ok faydaya nail olur.</p>\r\n\r\n<p>(Yusuf ibn&uuml; İsma&#39;il en-Nebhani, Se&#39;adet&uuml;&#39;d-dareyn fi&#39;s-salati &#39;ala<br />\r\nSeyyidi&#39;l-Kevneyn Sallallahu Aleyhi ve Sellem, Sh: 316-318)</p>\r\n', '', 1, 1, 10, '2023-01-21 14:53:54', '2023-01-21 17:15:44', 13),
(3, 'Ismi Azam Duası Okunuşu', 'Ismi-Azam-Duası-Okunuşu', '<p>Bismillahirrahmanirrahim</p>\r\n\r\n<p>&quot;All&acirc;h&uuml;mme inni es&#39;el&uuml;ke bi-enni leke&#39;l-hamd&uuml; l&acirc; ilahe ill&acirc; ente&#39;l-Menn&acirc;n&uuml;,y&acirc; Hannan&uuml;,y&acirc; Mennan&uuml;,ya Bedi&#39;as-sem&acirc;v&acirc;ti ve&#39;l-ard,Y&acirc; zel celali vel ikram.&quot;Ya Hayyu,Ya Kayy&ucirc;m.L&acirc; il&acirc;he ill&acirc; ente s&uuml;bhaneke inni k&uuml;nt&uuml; minez zalimin..All&acirc;h&uuml;mme inni es&#39;el&uuml;ke bi-enni eşhed&uuml; enneke ente&#39;l-l&acirc;h&uuml; l&acirc; ilahe ill&acirc; ente&#39;l-Ehad&uuml;&#39;s-Samed&uuml;llezi lem-yelid,ve lem y&uuml;led,ve lem yek&ucirc;n leh&uuml; k&uuml;fuven Ehad.Elif L&acirc;m Mim,All&acirc;h&uuml; l&acirc; il&acirc;he ill&acirc; H&uuml;ve&#39;l-Hayyu&#39;l-Kayy&ucirc;m.Ve il&acirc;h&uuml;k&uuml;m il&acirc;h&uuml;n Vahid&uuml;n l&acirc; il&acirc;he ill&acirc; H&uuml;ve&#39;r-Rahman&uuml;&#39;r-Rahim.Y&acirc; zel cel&acirc;li vel ikram.Y&acirc; Erhame&#39;r-Rahimin.All&acirc;h&uuml;mme inni es-el&uuml;ke bi-enneke ente&#39;l-lahu l&acirc; ilahe,ill&acirc; entelV&acirc;hid&uuml;l-Ehad&uuml;l Ferd&uuml;s Samed&uuml;llezi lem yelid ve lem y&uuml;led,ve lem yek&uuml;n leh&uuml; k&uuml;f&uuml;ven Ehad.L&acirc; İl&acirc;he ill&acirc;llahu vahdeh&uuml; l&acirc; şerike leh,leh&uuml;&#39;l m&uuml;k&uuml; ve leh&uuml;l hamd&uuml; ve H&uuml;ve ala k&uuml;lli şey&#39;in Kadir.L&acirc; il&acirc;he illallahu ve l&acirc; havleve la kuvvete ill&acirc; billahil Aliyyil Azim.Es-el&uuml;ke bismike&#39;l-e&#39;azze&#39;l-ecelli&#39;l-ekrem.Rabbi,Rabbi,Rabbi, Ya Rabbi,Ya Rabbi,ya Rabbi.L&acirc; il&acirc;heillallahu Vahdehu l&acirc; şerike leh,leh&uuml;l m&uuml;lk&uuml; ve leh&uuml;l hamd&uuml; ve H&uuml;ve al&acirc; k&uuml;lli şey&#39;in Kadir.Elhamd&uuml;li&#39;ll&acirc;hi ve S&uuml;bhan-Allahi ve&#39;l-hamd&uuml;lllahi ve l&acirc; il&acirc;he ill&acirc;llahu v&#39;Allahhu Ekber,ve l&acirc; havle ve l&acirc; kuvvete ill&acirc; bill&acirc;hi&#39;l-Aliyyi&#39;l-Azim.&quot;</p>\r\n\r\n<p><img alt=\"\" src=\"https://i4.hurimg.com/i/hurriyet/75/770x0/5df88d3a7af507185cf3b514.jpg\" style=\"width: 770px; height: 563px;\" /></p>\r\n\r\n<p><strong>İsmi Azam Duası T&uuml;rk&ccedil;e Anlamı</strong></p>\r\n\r\n<p>&quot;Allah&#39;tan başka ilah yoktur. Ancak, Celil ve Cebbar olan O&#39;dur. O&#39;ndan başka ilah yoktur. Ancak b&uuml;t&uuml;n kullarının hallerine vakıf olan ve kusurlarını &ouml;rtbas edendir. Allah&#39;tan başka ilah yoktur. Gece ile g&uuml;nd&uuml;z&uuml; halk eden O&#39;dur. Allah&#39;tan başka ilah yoktur. Tektir, şeriki yoktur, tektir ve birdir. Biz O&#39;na hamd&uuml; sena ederiz. Allah&#39;tan başka ilah yoktur. Ancak O vardır, tektir, ortağı yoktur. Tek bir Allah&#39;tır. Biz O&#39;na ibadet ederiz. Allah&#39;tan başka ilah yoktur. Ancak O vardır, tektir ve ortağı yoktur. Tek bir ilahtır. Bizler O&#39;na ş&uuml;krederiz. Allah&#39;tan başka ilah yoktur. Allah tektir, ortağı yoktur, Muhammed O&#39;nun Resu&uuml;&#39;d&uuml;r. Hay ve Kayyum O&#39;dur. Allah&#39;ın rahmeti mahlukatının en hayırlısı olan Muhammedin al ve ashabının ve hepsinin &uuml;zerine olsun. Şehadet ederim ki Sen hem Rabbimiz ve hem de Halikimizsin. Allah&#39;ım, beni mağfiret eyle, ey Allah, ey Allah, ey Allah Rahmetinle beni yarlığa Zira, Sen merhamet edenlerin en merhametlisisin.&quot;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><iframe allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/A2fDhuVs_98\" title=\"YouTube video player\" width=\"560\"></iframe></p>\r\n\r\n<p><strong>&quot;Hz. Peygamber (s.a.s.), bir g&uuml;n camiye girdi. Bir sahab&icirc; namaz kılıyordu. Bu sahab&icirc; namazdan sonra ş&ouml;yle diyerek dua etmeye başladı:</strong></p>\r\n\r\n<p>(Allah&#39;ım! Her t&uuml;rl&uuml; &ouml;vg&uuml; sana mahsustur. Senden başka ilah yoktur. (Sen), Menn&acirc;nsın (&Ccedil;ok nimet veren), g&ouml;kleri ve yeri yokken v&acirc;r edensin, cel&acirc;l ve ikram sahibisin. Ey yaşayan, diri, canlı, &ouml;l&uuml;ms&uuml;z, ezel&icirc; ve ebed&icirc; olan, zatı ile k&acirc;im olan, her şeyin varlığı kendisine bağlı olan, uykusu ve uyuklaması olmayan, varlıkları y&ouml;neten, koruyan ve ihtiya&ccedil;larını &uuml;stlenen Allah&#39;ım! c&uuml;mleleri ile sana dua ediyor, senden talepte bulunuyorum). Bu duayı işiten Peygamber (s.a.s.), &#39;Bu kimse, Allah&#39;ın İsm-i &Acirc;zam&#39;ı ile dua etti ki İsm-i &Acirc;z&acirc;m ile dua edildiğinde, Allah bu duayı kabul eder ve bu isimle istenince verir&#39; buyurdu.&quot; (Tirmiz&icirc;, Deav&acirc;t, 112; İbn M&acirc;ce, Dua, 9; Nes&acirc;&icirc;, Sehv, 58).</p>\r\n\r\n<p><strong>Duanın &ouml;ne &ccedil;ıkan faziletlerini ş&ouml;yle sayabiliriz;</strong></p>\r\n\r\n<p>1 - Her vakit namazından sonra bu duayı 111 kere okumaya devam ederseniz, Allah size sır kapılarını a&ccedil;acaktır. T&uuml;m m&uuml;lk, mahlukat ve meleklere vakıf olursunuz.</p>\r\n\r\n<p>2 - Savaş esnasında ve d&uuml;şmanınızın yanında okuduğunuzda, galip gelirsiniz. D&uuml;şmanınız imana gelir ve ondan hayır g&ouml;r&uuml;rs&uuml;n&uuml;z.</p>\r\n\r\n<p>&nbsp;3 - işyerinde okursanız, idarecilerle ilişkileriniz olumlu ilerler. Herhangi bir cezai işlem ve yaptırıma uğramazsınız.</p>\r\n\r\n<p>4 - Salih amel besleyerek ve iyi niyetle bir i&ccedil;eceğe bu duayı okuyup, istediğiniz kişiye i&ccedil;irebilirsiniz. İ&ccedil;en kişi size karşı muhabbet besleyecektir.</p>\r\n\r\n<p>&nbsp;5 - duayı bir kağıda yazıp, evinize veya işyerinize asabilirsiniz. Evinize ya da işyerinize gelen kişiler size muhabbet besleyecek, iyi niyetle yaklaşacaktır. İstediğiniz bir kişiyle aranızın iyi olmasını istiyorsanız, duanın altına o kişinin adını yazabilirsiniz.</p>\r\n\r\n<p>&nbsp;6 - Duanızda Allah&rsquo;ın isimlerini s&ouml;ylediğinizden imanınız artacak ve sevap kazanacaksınız.&nbsp;Duanın orijinali Arap&ccedil;adır. Dua sekiz satırdan oluşuyor. Arap&ccedil;a biliyorsanız rahatlıkla okuyabilirsiniz. Sadece Kuran harflerini biliyorsanız da duayı Arap&ccedil;a okuyabilirsiniz. İsterseniz ezberleyip, namazlardan sonra veya istediğiniz vakitte ezberden okuyabilirsiniz.&nbsp;D&uuml;nyevi meselelerden ve konulardan uzak bir şekilde, tam bir teslimiyet i&ccedil;inde sessiz bir ortamda duanızı okumaya &ouml;zen g&ouml;stermelisiniz.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', 1, 1, 4, '2023-01-21 16:10:02', '2023-01-21 17:16:17', 14),
(4, 'Ismi Azam - en güçlü dua', 'ismi-azam-en-guclu-dua', '<p><strong>En etkili ve en g&uuml;&ccedil;l&uuml; ismi azam duası</strong></p>\r\n\r\n<p><strong>Hadid suresinin başından 6 ayet haşr suresinin sonundan 4 ayet</strong></p>\r\n\r\n<p>Bismillahirrahm&acirc;nirrah&icirc;m</p>\r\n\r\n<p>1.&nbsp;&nbsp; &nbsp;Sebbeha lillahi ma fiyssemavati velardı ve huvel&#39;aziyzulhakiymu.<br />\r\n2.&nbsp;&nbsp; &nbsp;Lehu mulkussemavati vel&#39;ardı yuhyiy ve yumiytu ve huve &#39;ala kulli şey&#39;in kadiyrun.<br />\r\n3.&nbsp;&nbsp; &nbsp;Huvel&#39;evvelu vel&#39;ahıru vezzahiru velbatınu ve huve bikulli şey&#39;in &#39;aliymun.<br />\r\n4.&nbsp;&nbsp; &nbsp;Huvelleziy halekassemavati vel&#39;arda fiy sitteti eyyamin summesteva &#39;alel&#39;arşi ya&#39;lemu ma yelicu fiylardı ve ma yahrucu minha ve ma yenzilu minessemai ve ma ya&#39;rucu fiyha ve huve me&#39;akum eyne ma kuntum vallahu bima ta&#39;melune besıyrun.<br />\r\n5.&nbsp;&nbsp; &nbsp;Lehu mulkussemavati vel&#39;ardı ve ilellahi turce&#39;ul&#39;umuru.<br />\r\n6.&nbsp;&nbsp; &nbsp;Yuliculleyle fiynnehari ve yulicunnehare fiylleyli ve huve &#39;aleymun bizatissuduri.</p>\r\n\r\n<p>21.&nbsp;&nbsp; &nbsp;Lev enzelna hazelkur&#39;ane &#39;ala cebelin lereeytehu haşi&#39;an mutesaddi &#39;an min haşyetillahi ve tilkel&#39;emsalu nadribuha linnasi le&#39;allehum yetefekkerune.<br />\r\n22.&nbsp;&nbsp; &nbsp;Huvallahulleziy la ilahe illa huve &#39;alimulğaybi veşşehadeti huverrahmanurrahıymu.<br />\r\n23.&nbsp;&nbsp; &nbsp;Huvallahulleziy la ilahe illa huve elmelikulkuddususselamul mu&#39;minul muheyminul &#39;aziyzul cebbarul mutekebbiru subhanallahi &#39;amma yuşrikune.<br />\r\n24.&nbsp;&nbsp; &nbsp;Huvallahul halikul - bariy-ulmusavviru lehum&#39;esma ulhusna yusebbihu lehu ma fiyssemavati vel&#39;ardı. Ve huvel&#39;aziyzulhakiymu.</p>\r\n\r\n<p><strong>&ldquo;Ya men h&uuml;ve hakeza, es&rsquo;elike bi hakkı hazıhil esmai en t&uuml;salliye ala muhammedin ve ali muhammedin ve en tef&rsquo;ale bi</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><iframe allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/Muliiqns_24\" title=\"YouTube video player\" width=\"560\"></iframe></p>\r\n\r\n<p>1.&nbsp;&nbsp; &nbsp;G&ouml;klerdeki ve yerdeki her şey Allah&#39;ı tespih etmektedir. O, mutlak g&uuml;&ccedil; sahibidir, h&uuml;k&uuml;m ve hikmet sahibidir.<br />\r\n2.&nbsp;&nbsp; &nbsp;G&ouml;klerin ve yerin h&uuml;k&uuml;mranlığı yalnızca O&#39;nundur. Diriltir, &ouml;ld&uuml;r&uuml;r. O her şeye hakkıyla g&uuml;c&uuml; yetendir.<br />\r\n3.&nbsp;&nbsp; &nbsp;O, ilk ve sondur. Z&acirc;hir ve B&acirc;tın&#39;dır. O, her şeyi hakkıyla bilendir.<br />\r\n4.&nbsp;&nbsp; &nbsp;O, g&ouml;kleri ve yeri altı g&uuml;nde (altı evrede) yaratan, sonra Arş&#39;a kurulandır. Yere gireni, ondan &ccedil;ıkanı, g&ouml;kten ineni, oraya y&uuml;kseleni bilir. Nerede olsanız, O sizinle beraberdir. Allah b&uuml;t&uuml;n yaptıklarınızı hakkıyla g&ouml;rendir.<br />\r\n5.&nbsp;&nbsp; &nbsp;G&ouml;klerin ve yerin h&uuml;k&uuml;mranlığı O&#39;nundur. B&uuml;t&uuml;n işler ancak ona d&ouml;nd&uuml;r&uuml;l&uuml;r.<br />\r\n6.&nbsp;&nbsp; &nbsp;Geceyi g&uuml;nd&uuml;ze sokar, g&uuml;nd&uuml;z&uuml; de geceye sokar. O, g&ouml;ğ&uuml;slerin &ouml;z&uuml;n&uuml; (kalplerde olanı) hakkıyla bilendir.</p>\r\n\r\n<p>22.&nbsp;&nbsp; &nbsp;O, kendisinden başka hi&ccedil;bir ilah olmayan Allah&#39;tır. Gaybı da, g&ouml;r&uuml;nen &acirc;lemi de bilendir. O, Rahm&acirc;n&#39;dır, Rah&icirc;m&#39;dir.<br />\r\n23.&nbsp;&nbsp; &nbsp;O, kendisinden başka hi&ccedil;bir ilah bulunmayan Allah&#39;tır. O, m&uuml;lk&uuml;n ger&ccedil;ek sahibi, kutsal (her t&uuml;rl&uuml; eksiklikten uzak), barış ve esenliğin kaynağı, g&uuml;venlik veren, g&ouml;zetip koruyan, mutlak g&uuml;&ccedil; sahibi, d&uuml;zeltip ıslah eden ve dilediğini yaptıran ve b&uuml;y&uuml;kl&uuml;kte eşsiz olan Allah&#39;tır. Allah, onların ortak koştuklarından uzaktır.<br />\r\n24.&nbsp;&nbsp; &nbsp;O, yaratan, yoktan var eden, şekil veren Allah&#39;tır. G&uuml;zel isimler O&#39;nundur. G&ouml;klerdeki ve yerdeki her şey O&#39;nu tesbih eder. O, mutlak g&uuml;&ccedil; sahibidir, h&uuml;k&uuml;m ve hikmet sahibidir.</p>\r\n', '', 1, 1, 4, '2023-01-21 16:29:35', '2023-01-21 17:15:58', 14),
(5, 'Seyyidül İstiğfar', 'Seyyidul-İstigfar', '<p>Kuran&rsquo;da M&uuml;min suresinin 60. ayetinde &ldquo;bana dua edin, size icabet edeyim.&rdquo; Buyrulmuştur. Bakara suresinin 222. ayetinde de &ldquo;Allah, &ccedil;ok tevbe edenleri ve temizlenenleri kabul eder.&rdquo; Buyruluyor.&nbsp;Bu nedenle, &ldquo;benim g&uuml;nahım b&uuml;y&uuml;k, Allah affetmez&rdquo;, kuşkusuna kapılmayın. G&uuml;nahınızdan tevbe ederek, bol bol istiğfar duası edersiniz, imanınız kuvvetlenecek, ibadet sevabı kazanacaksınız.</p>\r\n\r\n<p><strong>Seyyid&uuml;l İstiğfar Duası T&uuml;rk&ccedil;e Okunuşu</strong></p>\r\n\r\n<p><strong>Bismillahirrahm&acirc;nirrah&icirc;m</strong></p>\r\n\r\n<p><strong>Allah&uuml;mme ente Rabb&icirc; l&acirc; ilahe ill&acirc; ente halakten&icirc; ve ene abd&uuml;ke ve ene al&acirc; ahdike ve v&acirc;&rsquo;dike mes&rsquo;tet&acirc;t&uuml; e&ucirc;z&uuml; bike min şerri m&acirc; san&acirc;t&uuml; eb&ucirc;&rsquo;&uuml; leke bi-n&icirc;metike aleyye ve eb&ucirc;&rsquo;&uuml; bizenb&icirc; fağfirl&icirc; feinneh&ucirc; l&acirc; yağfıruz-z&uuml;n&ucirc;be ill&acirc; ente.</strong></p>\r\n\r\n<p>T&ouml;vbe ve istiğfarda bulunacaksanız en &uuml;st&uuml;n ve faziletli duadır. Peygamber Efendimizin, Seyyid&uuml;l İstiğfar duasının fazileti ve &ouml;nemi &uuml;zerinde durmuştur. İsiğfarı en iyi şekilde yapmak istiyorsanız yukarıdaki şeklinde dua etmenizi buyurmuştur.</p>\r\n\r\n<p>Kısaca bu duanın meali ş&ouml;yledir; &ldquo;Ya Rabbi! İşlediğim b&uuml;t&uuml;n g&uuml;nahlarımı itiraf edip, tevbe ve istiğfar ederim. Nimetlerinin ş&uuml;kr&uuml;nden acizim. Beni affet, mağfiret eyle.&rdquo;<br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Seyyid&uuml;l İstiğfar Duası Arap&ccedil;a Okunuşu</strong></p>\r\n\r\n<p>اللَّهُمَّ أَنْتَ رَبِّى ، لاَ إِلَهَ إِلاَّ أَنْتَ ، خَلَقْتَنِى وَأَنَا عَبْدُكَ ، وَأَنَا عَلَى عَهْدِكَ وَوَعْدِكَ مَا اسْتَطَعْتُ ، أَعُوذُ بِكَ مِنْ شَرِّ مَا صَنَعْتُ ، أَبُوءُ لَكَ بِنِعْمَتِكَ عَلَىَّ وَأَبُوءُ بِذَنْبِى ، اغْفِرْ لِى ، فَإِنَّهُ لاَ يَغْفِرُ الذُّنُوبَ إِلاَّ أَنْتَ</p>\r\n\r\n<p><strong>Seyyid&uuml;l İstiğfar T&uuml;rk&ccedil;e Anlamı ve Meali</strong></p>\r\n\r\n<p>Diğer dualar gibi, tevbe-istiğfar duası da Arap&ccedil;a yazılmıştır. Fakat duanızı mutlaka Arap&ccedil;a okuyacak ve s&ouml;yleyeceksiniz diye bir şart bulunmuyor. Duanızı T&uuml;rk&ccedil;e de yapabilirsiniz.</p>\r\n\r\n<p>&quot;Allah&rsquo;ım! Sen benim Rabbimsin! Senden başka hi&ccedil;bir il&acirc;h yoktur. Beni sen yarattın. Ben Senin kulunum; g&uuml;c&uuml;m yettiği kadarıyla Senin ahdin ve va&rsquo;din &uuml;zere bulunuyorum. Yaptığım fenalıkların şerrinden Sana sığınırım. &Uuml;zerimde olan nimetlerini itiraf ederim; g&uuml;nahımı da itiraf ederim. Beni bağışla; &ccedil;&uuml;nk&uuml; Senden başka hi&ccedil;bir kimse g&uuml;nahları bağışlamaz.) (Buh&acirc;r&icirc;, Deav&acirc;t, 2)&quot;</p>\r\n\r\n<p>Duayı Arap&ccedil;a s&ouml;ylemekte zorluk &ccedil;ekiyorsanız veya yanlış yapmaktan korkuyorsanız, T&uuml;rk&ccedil;e mealini okuyabilirsiniz. Bir kağıda yazıp ya da cep telefonunuza indirip, istediğiniz zaman okuyabilirsiniz.</p>\r\n\r\n<p><strong>Seyyid&uuml;l İstiğfar Duasının Fazileti</strong></p>\r\n\r\n<p>Peygamber Efendimiz, Seyyid&uuml;l İstiğfar duasının faziletini şu s&ouml;zleriyle belirtmiştir; &ldquo;Kim, seyyid&uuml;l istiğfar duasının faziletine inanarak g&uuml;nd&uuml;z okursa, gece olmadan &ouml;ld&uuml;ğ&uuml;nde cennetlik olur. Aynı şekilde gece okuyup, sabah olmadan &ouml;l&uuml;rse yine cennetlik olur.&rdquo;</p>\r\n\r\n<p>Bu duayı anlamına ve faziletine inanarak okumaya devam ederseniz, g&uuml;nahlardan arınıyorsunuz. İbadet sevabı kazanıyor, melekler sizin i&ccedil;in dua ediyor. Bilerek veya bilmeyerek işlediğiniz g&uuml;nahlarınız i&ccedil;in s&uuml;rekli af dileyip, y&uuml;k&uuml;ml&uuml;l&uuml;klerinizi yerine getirmelisiniz. Bununla birlikte seyyid&uuml;l istiğfar duasını okuduğunuzda cennetle m&uuml;jdeleniyorsunuz.</p>\r\n\r\n<p><strong>T&ouml;vbe Duası</strong></p>\r\n\r\n<p><strong>Seyyid&uuml;l İstiğfar haricinde de t&ouml;vbe duası bulunuyor. Kısa olarak okuyacağınız gibi uzun olarak okunan tevbe duası da bulunuyor. En &ccedil;ok bilinen ve okunan dua ş&ouml;yledir:</strong></p>\r\n\r\n<p><strong>&quot;Estağfirullah. Estağfirullah. Estağfirullahe&#39;l-az&icirc;m el-ker&icirc;m, ellez&icirc; l&acirc; il&acirc;he ill&acirc; h&uuml;ve&#39;l-hayy&uuml;&#39;l-kayy&ucirc;m&uuml; ve et&ucirc;b&uuml; ileyhi, tevbete abdin z&acirc;limin li-nefsih&icirc;, l&acirc; yemlik&uuml; li-nefsih&icirc; mevten vel&acirc; hay&acirc;ten vel&acirc; n&uuml;ş&ucirc;r&acirc;. Ve es-el&uuml;h&uuml;&#39;t-tevbete ve&#39;l-mağfirete ve&#39;l-hid&acirc;yete len&acirc;, inneh&ucirc;, h&uuml;ve&#39;t-tevv&acirc;b&uuml;&#39;r-rah&icirc;m.&quot;.</strong></p>\r\n\r\n<p><strong>İsterseniz bu uzun t&ouml;vbe duasının yerine, bu duanın ilk c&uuml;mlesini de okuyabilirsiniz. Tevbe duasının yanı sıra Kuran&rsquo;de bulunan Tevbe suresi de vardır. Namazlarınızda ve dualarınızda bu s&uuml;reyi de sık sık okuyabilirsiniz.</strong></p>\r\n\r\n<p><strong>Peygamber Efendimizden nakledildiğine g&ouml;re; &ldquo; kim Tevbe suresini okumaya devam ederse, kıyamet g&uuml;n&uuml;nde ona şefaat&ccedil;i olacağı&rdquo; buyrulmuştur. Tevbe suresini okuyan kişi, m&uuml;nafıklıktan uzak durur, melekler, o kişiye &ouml;lene kadar istiğfarda bulunurlar.</strong></p>\r\n', '', 1, 1, 2, '2023-01-21 16:39:35', '2023-01-21 16:42:22', 15),
(6, 'Yunus Aleyhi ve Sellemın Ismi Azam duası', 'Yunus-Aleyhi-ve-Sellemın-Ismi-Azam-duası', '<p>Her kim bu duayı Hz. Yunus gibi g&ouml;n&uuml;lden okursa, hissettiği sıkıntılardan ve kederden kurtulacağı d&uuml;ş&uuml;n&uuml;lmektedir. Aynı şekilde i&ccedil;inde bulunulan k&ouml;t&uuml; durumlardan kurtulmak i&ccedil;in de bu duaya başvurulabilir.</p>\r\n\r\n<p><strong>ilahe illa ente s&uuml;bhaneke innı k&uuml;nt&uuml; minez zalimin</strong></p>\r\n\r\n<p>Bir hadise g&ouml;r Hz Muhammed bu duayı 40 kere okuyup halini arz eden hastaların sağlıklarına kavuşacaklarına ve kendilerine şehit sevabı yazılacağını m&uuml;jdelemiştir.</p>\r\n\r\n<p>Edilecek dua ve tespihlerin anlamlarının bilinmesi, yapılacak ibadetin daha g&ouml;n&uuml;lden hissedilmesine aracı olmaktadır. Bu sebeple duaların yalnızca Arap&ccedil;a ezberlerinin yapılmaması, manalarının da bilinmesi gerekmektedir. Bu duanın manası ise; Allah&#39;ın her t&uuml;rl&uuml; noksanlıktan uzak olduğunu, Onun eşi benzerinin bulunmadığını ve kişilerin ancak kendilerine yazık edileceğinden bahsedilmektedir. Bu dua Enbiya Suresinde yer almaktadır.</p>\r\n\r\n<p><strong>ayet - 87</strong></p>\r\n\r\n<p><strong>Z&uuml;&#39;n-Nun&#39;u/Yunus&#39;u da hatırla! O, &ouml;fkeli bir halde ge&ccedil;ip gitmişti; bizim kendisini asla sıkıştırmayacağımızı zannetmişti. Nihayet karanlıklar i&ccedil;inde, &quot;Senden başka hi&ccedil;bir tanrı yoktur. Seni tenzih ederim. Ger&ccedil;ekten ben zalimlerden oldum&quot; diye yalvardı.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><iframe allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/Bc33vXUVeJg\" title=\"YouTube video player\" width=\"560\"></iframe></p>\r\n', '', 1, 1, 3, '2023-01-21 16:55:04', '2023-01-21 16:58:30', 15),
(7, 'Nur Yüzlü peygamberimiz &#039;in özellikleri...', 'Nur-Yuzlu-peygamberimiz-in-ozellikleri', '<p>Peygamber Efendimiz (sallall&acirc;hu aleyhi ve sellemin) M&uuml;barek Sarığı ...<br />\r\nNur Y&uuml;zl&uuml; peygamberimiz Hz Muhamməd (S.A.V.)&#39;in &ouml;zellikleri...<br />\r\n&bull; &Ccedil;ok konuşmazdı,<br />\r\n&bull; Daima d&uuml;ş&uuml;nceliydi,<br />\r\n&bull; K&ouml;t&uuml; s&ouml;z s&ouml;ylemezdi,<br />\r\n&bull; Kimseyle &ccedil;ekişmezdi.<br />\r\n&bull; Her zaman ağır başlıydı,<br />\r\n&bull; Boş şeylerle uğraşmazdı,<br />\r\n&bull; D&uuml;nya işleri i&ccedil;in kızmazdı,<br />\r\n&bull; L&uuml;zumsuz yere konuşmazdı,<br />\r\n&bull; Umanı umutsuzluğa d&uuml;ş&uuml;rmezdi,<br />\r\n&bull; Kimsenin kusurunu araştırmazdı,<br />\r\n&bull; Vakar ve s&uuml;kunetle rahat&ccedil;a y&uuml;r&uuml;rd&uuml;,<br />\r\n&bull; Susması konuşmasından uzun s&uuml;rerdi,<br />\r\n&bull; Ger&ccedil;eğe aykırı &ouml;vg&uuml;y&uuml; kabul etmezdi,<br />\r\n&bull; Hoşlanmadığı bir şey hakkında susardı,<br />\r\n&bull; Konuşurken &ccedil;evresindekileri adeta kuşatırdı,<br />\r\n&bull; Sıkıntılı halinde kabalaşmaz,bağırmazdı,<br />\r\n&bull; Konuşurken y&uuml;z&uuml;n&uuml; başka tarafa &ccedil;evirmezdi,<br />\r\n&bull; Sade kıyafetler giyer,g&ouml;sterişten hoşlanmazdı,<br />\r\n&bull; Kendi şahsı i&ccedil;in asla &ouml;fkelenmez ve &ouml;&ccedil; almazdı,<br />\r\n&bull; Konuştuğunda ne fazla ne de eksik s&ouml;z kullanırdı,<br />\r\n&bull; Bulunduğu mecliste ayrıcalıktı bir yere oturmazdı,<br />\r\n&bull; Sıradan değildi, ama sıradan insanlar gibi yaşardı,<br />\r\n&bull; Kapısına yardım i&ccedil;in gelen kimseyi geri &ccedil;evirmezdi,<br />\r\n&bull; Kimse hakkında hayırlı olmayan s&ouml;z&uuml; s&ouml;ylemezdi,<br />\r\n&bull; Her zaman h&uuml;z&uuml;nl&uuml; ve m&uuml;tebessim bir baletle dururdu,<br />\r\n&bull; Adet &uuml;zere sarfedilen hi&ccedil;bir k&ouml;t&uuml; s&ouml;z&uuml; ağzına almamıştı,<br />\r\n&bull; Kelimeleri parıldayan inci dizileri gibi tatlı ve berraktı,<br />\r\n&bull; Fakirlerle birlikte yerdi, &ouml;yle ki onlardan ayırt edilmezdi,<br />\r\n&bull; Y&uuml;r&uuml;rken beraberindekilerin gerisinde gerisinde y&uuml;r&uuml;rd&uuml;,<br />\r\n&bull; Yanında en son konuşanı ilk &ouml;nce konuşan gibi dikkatle dinlerdi,<br />\r\n&bull; D&uuml;şmanlarını affetmekle kalmaz,onlara şeref ve değerde verirdi,<br />\r\n&bull; Hi&ccedil; kimseyi ne y&uuml;z&uuml;ne karşı, ne de arkasından kınar ve ayıplardı,<br />\r\n&bull; Y&uuml;r&uuml;rken ayaklarını yerden canlıca kaldırır, iki yanına salınmazdı,<br />\r\n&bull; Adımlarını geniş atar,y&uuml;ksek bir yerden iner gibi &ouml;ne doğru eğilirdi,<br />\r\n&bull; Dostlarına ş&ouml;yle derdi, d&uuml;nyada garip bir kimse yahut bir yolcu gibi ol,<br />\r\n&bull; Sabahları evinden &ccedil;ıkarken ş&ouml;yle derdi: İlahi, doğru yoldan sapmaktan ve saptırmaktan,<br />\r\nkanmaktan ve kandırmaktan, haksızlık etmekten ve haksızlığa uğramaktan, saygısız etmekten ve<br />\r\nsaygısızlık edilmekten sana sığınırım.</p>\r\n\r\n<p><img alt=\"\" src=\"https://assets.hmetro.com.my/images/articles/01xxnabi1_1563330290.jpg\" style=\"width: 921px; height: 1196px;\" /></p>\r\n\r\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/3AglvGvZisY\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>\r\n', '', 1, 1, 4, '2023-01-21 17:11:47', '2023-01-21 17:13:22', 16),
(9, '111 Kere okunan ismi Azam duası', '111-kere-okunan-ismi-azam-duasi', '<p>Bir hacetin olup yerine gelmesini istiyorsan bu ism-i şerifi okumalısın. Bu zikirler Allahu Teala&rsquo;nın Esma&uuml;l H&uuml;sna isimlerinden 11 ism-i şerifinden oluşur. Bir &ccedil;ok evliya ve b&uuml;y&uuml;k alimler i&ccedil;in ism-i azam mertebesinde bulunan bu isimler ile yapılan dua faziletli ve kabule mazhar olur.</p>\r\n\r\n<p>Bu duayı en az 11 en fazla 111 defa okuyarak her t&uuml;rl&uuml; istek ve hacet i&ccedil;in Allahu Teala&rsquo;ya el a&ccedil;ılıp dua edilir. Allah&rsquo;ın izniyle en kısa s&uuml;rede duanız kabul olur.</p>\r\n\r\n<p>11 ism-i şerif<br />\r\nEn az (11) on bir kere, en fazla (111) y&uuml;z on bir kere tekrar edildiğinde b&uuml;t&uuml;n hayırlı maksatların hasıl olacağı 11 ism-i şerif vardır ki bazı veliler bunları ehlinden bizlere nakletmişlerdir. Bu ismi şerifler şunlardır.</p>\r\n\r\n<p><strong>Arap&ccedil;a Yazılışı;&nbsp;</strong></p>\r\n\r\n<p>يَا اللَّهُ , يَا هُوَ , يَا لمَلِكُ , يَا سَمِيعُ , يَا قَدِيرُ , يَا كَرِيمُ , يَا حَلِيمُ , يَا لَطِيفُ , يَا عَلِيمُ , يَا مُعِينُ , يَا صَادِقُ</p>\r\n\r\n<p><strong>T&uuml;rk&ccedil;e Okunuşu;</strong></p>\r\n\r\n<p><strong>&ldquo;Allahu h&uuml;ve Melikun Semiy&rsquo;un Kadirun Kerimun Haliymun Latiyfun Aliymun Muiynun Sadikun&rdquo;&nbsp;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><iframe allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/G_BJHL7AyBs\" title=\"YouTube video player\" width=\"560\"></iframe></p>\r\n\r\n<p>Evliyaullahın kendisine ulaşmak i&ccedil;in &ouml;m&uuml;r ve mal t&uuml;kettiği 11 ism-i şeriften m&uuml;rekkep ism-i azam</p>\r\n\r\n<p>C&uuml;bbeli Ahmet Hoca&rsquo;dan 111 Kere okunan ism-i Azam duası faziletlerini ve nasıl okunması gerektiğini bu videodan dinleyebilirsiniz.</p>\r\n\r\n<h4><strong>11 İsm-i Şerif ve Anlamları</strong></h4>\r\n\r\n<p><strong>Allah : T&uuml;m isim ve sıfatlan kendinde toplayan y&uuml;ce Allah&rsquo;ın zatının, başka hi&ccedil;bir varlığa verilemeyen ismidir.<br />\r\nHuve : Hu-O demektir. (Allah kastedilmektedir.)<br />\r\nMelik : B&uuml;t&uuml;n mevcudatın ger&ccedil;ek sahibi ve tek h&uuml;k&uuml;mdarı, s&ouml;zl&uuml;kte, sahip olmak, istila etmek, kuvvetli olmak, h&uuml;kmetmek, kontrol etmek, irade gibi anlama gelir.<br />\r\nSemi : İşiten, Gizli a&ccedil;ık her sesi işiten anlamındadır. &nbsp;O, hi&ccedil;bir şartla ve kayda bağlı olmaksızın işitir. Her şeyi işiten, kullarının niyazını kabul eden demektir.<br />\r\nKadir : Sonsuz g&uuml;&ccedil; ve kudret sahibi olan Allah anlamındadır. Her istediğini, istediği gibi, sonsuz g&uuml;&ccedil; ve kudretiyle yapan O&rsquo;dur.<br />\r\nKerim : Keremi ve c&ouml;mertliği nihayetsiz derecede bol olan, kullarına istemeden ve karşılıksız olarak veren demektir. İyilik ve ikramı bol olan Allah&rsquo;tır.<br />\r\nHalim: Yarattıklarına son derece yumuşak muamele eden, Affı, bağışlaması ve m&uuml;samahası sınırsız ve kullarına daima hoşg&ouml;r&uuml;l&uuml; davranan.<br />\r\nLatif: L&uuml;tuf &nbsp;ve keremi bol olan, l&uuml;tfeden, inayet ve ihsanı sınırsız olan. Kulun istek ve ihtiya&ccedil;larını yumuşaklıkla ve kolayca ulaştıran. En ince nasıl yapıldığı bilinmeyen işleri bilen, derinliklere ve bilinmezlere n&uuml;fuz eden. Akla hayale gelmeyen yollardan ve yerlerden kuluna nimetler ,hayırlar ve faydalar &nbsp;&ccedil;ıkaran, s&uuml;rekli l&uuml;tfeden.<br />\r\nAlim: Canlı veya &ouml;l&uuml;, k&uuml;&ccedil;&uuml;k veya b&uuml;y&uuml;k, gizli veya a&ccedil;ık, kalpte, kafada olan veya dışa vurulan şeyi en ince ayrıntısına kadar hakkıyla bilen anlamına gelir.<br />\r\nMuin : Kullarına yardım eden, nimet veren. Yardıma muhta&ccedil;lara yardım eden.<br />\r\nSadik: Haber verdiği her şeyde doğru s&ouml;yleyici. Kainatta cereyan eden b&uuml;t&uuml;n işler, olaylar ve b&uuml;t&uuml;n varlıklar vaadinden asla d&ouml;nmediğinin birer delili ve şahidi olan, ve her işi doğru, yalandan ve hileden sonsuz derece uzak olan ve s&ouml;z&uuml;n&uuml; yerine getiren demektir.</strong></p>\r\n\r\n<h4><strong>Duanın Fazileti, Faydaları ve Sırları</strong></h4>\r\n\r\n<p>Şeyh Muhammed Siba i (R.a) beyanıyla İsmi Azam kabul edilen bu on bir ismi şerifin bir&ccedil;ok hassası vardır. Bunlardan bazıları şunlardır;</p>\r\n\r\n<p>1. Ger&ccedil;ek manada veli olmak ve Allahu Teala ile &uuml;nsiyet kurmak isteyen kişi Allah i&ccedil;in ihlasla onbir g&uuml;n oru&ccedil; tutup bu sure zarfında kimseyle konuşmaz ve m&uuml;ddet tamamlanana kadar her namazın ardından bu ismi azamı 111 kere okursa Allahu Teala ona sır kapılarını a&ccedil;ar, m&uuml;lk ve melek&uuml;t&uuml; tanıtır. b&uuml;t&uuml;n mahlukatı dilediği surette evirip &ccedil;evireceği şekilde kendisi i&ccedil;in musahhar kılar.<br />\r\n2. D&uuml;nyevi makam istiyorsan 12 rekat hacet namazı kıldıktan sonra hulusu kalp ile ve d&uuml;zg&uuml;n bir niyetle bu ismi şerifi 111 kere oku ve muradına nail ol.<br />\r\n3. y&uuml;ksek makama ulaşmak i&ccedil;in bu ismi şerifi temiz bir yerde 111 kere oku. o zaman istediğin her meşru şeyi yapabilirsin.<br />\r\n4. Bir hacetin olup onun yerine gelmesini istiyorsan 111 kere okuyup muradını Allahu Teala&rsquo;dan istediğin takdirde Allahu Teala senin i&ccedil;in o hacetini g&ouml;recektir.<br />\r\n5. Bu ismi şerifi bir taş &uuml;zerine okuyup fırtınalı denize atarsan biiznillah denizin dalgaları sukunete erişir ve b&ouml;ylece kimse boğulmaz.<br />\r\n6. Bu ismi şerifi 111 kere (Arap&ccedil;a Harfleriyle)yazıp &uuml;zerinde taşırsan hi&ccedil; bir silah tesir etmez.<br />\r\n7. bu ismi şerifi 11 kere okuyup birini &ccedil;ağırırsan davetine icabet eder.<br />\r\n8. bu ismi şerifi d&uuml;şmanlarının yanında okuyan kişi hasmına galip gelir ve ondan ancak hayır g&ouml;r&uuml;r.<br />\r\n9. Bu ismi şerifi y&ouml;neticinin huzurunda okuyan kişiye karşı o amirin &ouml;fkesi diner, kendisi hakkında hangi t&uuml;r ceza kesinleşmişse bile o y&ouml;netici tarafından o ceza kaldırılır.<br />\r\n10. Bu ismi şerifi sancak &uuml;zerine okunursa o asker bozguna uğramaz.</p>\r\n', '', 1, 1, 2, '2023-01-21 17:37:58', '2023-01-21 17:44:54', 14);

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_title` varchar(100) NOT NULL,
  `category_slug` varchar(100) NOT NULL,
  `category_text` varchar(300) NOT NULL,
  `category_key` int(11) NOT NULL DEFAULT 1,
  `category_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `category_updated` timestamp NOT NULL DEFAULT current_timestamp(),
  `section_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`category_id`, `category_title`, `category_slug`, `category_text`, `category_key`, `category_created`, `category_updated`, `section_id`) VALUES
(1, 'other', 'other', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse', 1, '2023-01-21 04:40:13', '2023-01-21 04:46:31', 1),
(13, 'Salavati şərifə', 'salavati-sherife', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&amp;nbsp;', 1, '2023-01-21 12:21:49', '2023-01-21 14:51:37', 8),
(14, 'Ismi Azam', 'ismi-azam', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', 1, '2023-01-21 16:05:54', '2023-01-21 16:05:54', 8),
(15, 'Dua', 'dua', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,', 1, '2023-01-21 16:37:00', '2023-01-21 16:37:00', 8),
(16, 'peygamberler', 'peygamberler', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', 1, '2023-01-21 17:08:37', '2023-01-21 17:17:30', 9);

-- --------------------------------------------------------

--
-- Структура таблицы `guest`
--

CREATE TABLE `guest` (
  `guest_id` int(11) NOT NULL,
  `guest_ip` varchar(50) NOT NULL,
  `guest_visit` int(11) NOT NULL,
  `guest_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `guest`
--

INSERT INTO `guest` (`guest_id`, `guest_ip`, `guest_visit`, `guest_created`) VALUES
(1, '127.0.0.1', 1674326888, '2023-01-21 12:09:59'),
(2, '188.253.224.245', 1674322471, '2023-01-21 16:33:18'),
(3, '149.154.161.196', 1674322447, '2023-01-21 16:34:07');

-- --------------------------------------------------------

--
-- Структура таблицы `section`
--

CREATE TABLE `section` (
  `section_id` int(11) NOT NULL,
  `section_title` varchar(50) NOT NULL,
  `section_slug` varchar(50) NOT NULL,
  `section_text` varchar(500) NOT NULL,
  `section_key` int(11) NOT NULL DEFAULT 1,
  `section_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `section_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `section`
--

INSERT INTO `section` (`section_id`, `section_title`, `section_slug`, `section_text`, `section_key`, `section_created`, `section_updated`) VALUES
(1, 'other', 'other', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1, '2023-01-21 04:39:43', '2023-01-21 04:39:43'),
(8, 'Dualar', 'dualar', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Magni delectus nostrum odio quaerat nihil, soluta nemo quasi ipsa. Aliquam, porro. &amp;nbsp;', 1, '2023-01-21 12:18:30', '2023-01-21 14:52:20'),
(9, 'Bilgi', 'bilgi', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', 1, '2023-01-21 17:01:47', '2023-01-21 17:08:02');

-- --------------------------------------------------------

--
-- Структура таблицы `setting`
--

CREATE TABLE `setting` (
  `setting_id` int(11) NOT NULL,
  `setting_description` varchar(100) NOT NULL,
  `setting_key` varchar(100) NOT NULL,
  `setting_value` text NOT NULL,
  `setting_type` varchar(50) NOT NULL,
  `setting_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `setting`
--

INSERT INTO `setting` (`setting_id`, `setting_description`, `setting_key`, `setting_value`, `setting_type`, `setting_updated`) VALUES
(3, 'author', 'author', '190101101', 'text', '2022-12-15 19:57:56'),
(4, 'title', 'title', 'Blog', 'text', '2022-12-15 23:02:27'),
(5, 'description', 'description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur, repellendus.', 'textarea', '2022-12-15 23:03:59'),
(6, 'keyword', 'keyword', '#param1, #param2, #param3, #param4, #param5', 'text', '2022-12-15 20:00:50'),
(7, 'website', 'website', 'https://190101101.github.io/developer/', 'text', '2022-12-15 20:02:28'),
(8, 'github', 'github', 'https://github.com/190101101', 'text', '2022-12-15 20:02:59'),
(15, 'email address', 'email', '190101101@blog.com', 'text', '2022-12-15 20:07:24'),
(16, 'Copyright', 'copyright', 'Copyright © 2022', 'text', '2022-12-15 20:07:24'),
(19, 'reminder title', 'reminder_title', 'reminder', 'text', '2023-01-21 05:56:10'),
(20, 'reminder', 'reminder', 'You can put anything you want inside of these side widgets. They are easy to use, and feature the new Bootstrap 4 card containers!', 'text', '2022-12-15 20:07:24');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_login` varchar(50) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_status` int(11) NOT NULL DEFAULT 1,
  `user_level` int(11) NOT NULL DEFAULT 1,
  `user_gender` varchar(50) NOT NULL,
  `user_ip` varchar(100) NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_updated` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`user_id`, `user_email`, `user_login`, `user_password`, `user_status`, `user_level`, `user_gender`, `user_ip`, `last_updated`, `user_updated`, `user_created`) VALUES
(1, 'apsi@mail.ru', 'apsi', '111', 1, 99, 'male', '127.0.0.1', '2022-12-20 22:11:37', '2023-01-21 12:10:08', '2022-12-20 22:11:37');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`article_id`),
  ADD KEY `article_title` (`article_title`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `article_slug` (`article_slug`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `category_title` (`category_title`),
  ADD KEY `category_slug` (`category_slug`),
  ADD KEY `section_id` (`section_id`);

--
-- Индексы таблицы `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`guest_id`),
  ADD KEY `guest_ip` (`guest_ip`),
  ADD KEY `guest_visit` (`guest_visit`);

--
-- Индексы таблицы `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`section_id`),
  ADD KEY `section_title` (`section_title`),
  ADD KEY `section_slug` (`section_slug`);

--
-- Индексы таблицы `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`setting_id`),
  ADD KEY `setting_description` (`setting_description`),
  ADD KEY `setting_key` (`setting_key`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `user_email` (`user_email`),
  ADD KEY `user_password` (`user_password`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `article`
--
ALTER TABLE `article`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `guest`
--
ALTER TABLE `guest`
  MODIFY `guest_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `section`
--
ALTER TABLE `section`
  MODIFY `section_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `setting`
--
ALTER TABLE `setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
