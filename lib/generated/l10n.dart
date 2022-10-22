// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Ecommercefy`
  String get appName {
    return Intl.message(
      'Ecommercefy',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `contato@ecommercefy.app`
  String get appContactEmail {
    return Intl.message(
      'contato@ecommercefy.app',
      name: 'appContactEmail',
      desc: '',
      args: [],
    );
  }

  /// `Começar agora`
  String get components_LandingPage_CtaButton_MainActionText {
    return Intl.message(
      'Começar agora',
      name: 'components_LandingPage_CtaButton_MainActionText',
      desc: '',
      args: [],
    );
  }

  /// `A Ecommercefy é uma plataforma que automatiza tarefas e centraliza processos relacionados à presença virtual de lojas físicas e e-commerces, possibilitando alcançar mais clientes com menos esforço.`
  String get components_LandingPage_Block0_LandingPage_AppBrief {
    return Intl.message(
      'A Ecommercefy é uma plataforma que automatiza tarefas e centraliza processos relacionados à presença virtual de lojas físicas e e-commerces, possibilitando alcançar mais clientes com menos esforço.',
      name: 'components_LandingPage_Block0_LandingPage_AppBrief',
      desc: '',
      args: [],
    );
  }

  /// `Sua loja em todos os lugares!`
  String get components_LandingPage_Block0_LandingPage_AppSlogan {
    return Intl.message(
      'Sua loja em todos os lugares!',
      name: 'components_LandingPage_Block0_LandingPage_AppSlogan',
      desc: '',
      args: [],
    );
  }

  /// `Mais informações`
  String get components_LandingPage_Block0_ScrollDownButton_Tooltip {
    return Intl.message(
      'Mais informações',
      name: 'components_LandingPage_Block0_ScrollDownButton_Tooltip',
      desc: '',
      args: [],
    );
  }

  /// `Por que utilizar a Ecommercefy em sua loja?`
  String get components_LandingPage_Block1_Title {
    return Intl.message(
      'Por que utilizar a Ecommercefy em sua loja?',
      name: 'components_LandingPage_Block1_Title',
      desc: '',
      args: [],
    );
  }

  /// `A Ecommercefy permite que as pessoas deixem de executar tarefas repetitivas e passem a realizar feitos incríveis!`
  String get components_LandingPage_Block1_Subtitle {
    return Intl.message(
      'A Ecommercefy permite que as pessoas deixem de executar tarefas repetitivas e passem a realizar feitos incríveis!',
      name: 'components_LandingPage_Block1_Subtitle',
      desc: '',
      args: [],
    );
  }

  /// `1 plataforma, diversos canais de vendas`
  String get components_LandingPage_Block2_Title {
    return Intl.message(
      '1 plataforma, diversos canais de vendas',
      name: 'components_LandingPage_Block2_Title',
      desc: '',
      args: [],
    );
  }

  /// `A Ecommercefy permite que você gerencie produtos em diferentes canais de vendas, de forma simples e centralizada, com regras de preço e envio customizáveis.`
  String get components_LandingPage_Block2_Subtitle {
    return Intl.message(
      'A Ecommercefy permite que você gerencie produtos em diferentes canais de vendas, de forma simples e centralizada, com regras de preço e envio customizáveis.',
      name: 'components_LandingPage_Block2_Subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Sua loja`
  String get components_LandingPage_Block2_CardYourStore {
    return Intl.message(
      'Sua loja',
      name: 'components_LandingPage_Block2_CardYourStore',
      desc: '',
      args: [],
    );
  }

  /// `Integre o seu catálogo às redes sociais`
  String get components_LandingPage_Block3_Title {
    return Intl.message(
      'Integre o seu catálogo às redes sociais',
      name: 'components_LandingPage_Block3_Title',
      desc: '',
      args: [],
    );
  }

  /// `Com a Ecommercefy, você integra o seu catálogo às principais redes sociais, gera publicações de preço e automatiza postagens, sem perder a identidade visual da sua marca.`
  String get components_LandingPage_Block3_Subtitle {
    return Intl.message(
      'Com a Ecommercefy, você integra o seu catálogo às principais redes sociais, gera publicações de preço e automatiza postagens, sem perder a identidade visual da sua marca.',
      name: 'components_LandingPage_Block3_Subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Exiba os seus produtos onde as pessoas buscam`
  String get components_LandingPage_Block4_Title {
    return Intl.message(
      'Exiba os seus produtos onde as pessoas buscam',
      name: 'components_LandingPage_Block4_Title',
      desc: '',
      args: [],
    );
  }

  /// `Anuncie no Google Shoppings com a ajuda da Ecommercefy.`
  String get components_LandingPage_Block4_Subtitle {
    return Intl.message(
      'Anuncie no Google Shoppings com a ajuda da Ecommercefy.',
      name: 'components_LandingPage_Block4_Subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Selecione um plano e ganhe 1 mês grátis!`
  String get components_LandingPage_Block5_Title {
    return Intl.message(
      'Selecione um plano e ganhe 1 mês grátis!',
      name: 'components_LandingPage_Block5_Title',
      desc: '',
      args: [],
    );
  }

  /// `Escolha um plano:`
  String get components_LandingPage_Block5_PlanToggleButtonTitle {
    return Intl.message(
      'Escolha um plano:',
      name: 'components_LandingPage_Block5_PlanToggleButtonTitle',
      desc: '',
      args: [],
    );
  }

  /// `Mensal`
  String get components_LandingPage_Block5_PlanToggleButton_Option1Monthly {
    return Intl.message(
      'Mensal',
      name: 'components_LandingPage_Block5_PlanToggleButton_Option1Monthly',
      desc: '',
      args: [],
    );
  }

  /// `Anual`
  String get components_LandingPage_Block5_PlanToggleButton_Option2Yearly {
    return Intl.message(
      'Anual',
      name: 'components_LandingPage_Block5_PlanToggleButton_Option2Yearly',
      desc: '',
      args: [],
    );
  }

  /// `Selecionar`
  String get components_LandingPage_Block5_PlanCard_SelectButtonText {
    return Intl.message(
      'Selecionar',
      name: 'components_LandingPage_Block5_PlanCard_SelectButtonText',
      desc: '',
      args: [],
    );
  }

  /// `Saiba mais`
  String get components_LandingPage_Block5_PlanCard_KnowMoreButton_Tooltip {
    return Intl.message(
      'Saiba mais',
      name: 'components_LandingPage_Block5_PlanCard_KnowMoreButton_Tooltip',
      desc: '',
      args: [],
    );
  }

  /// `Plano Starter`
  String get components_LandingPage_Block5_PlanCard_Plan1_Title {
    return Intl.message(
      'Plano Starter',
      name: 'components_LandingPage_Block5_PlanCard_Plan1_Title',
      desc: '',
      args: [],
    );
  }

  /// `Plano Growth`
  String get components_LandingPage_Block5_PlanCard_Plan2_Title {
    return Intl.message(
      'Plano Growth',
      name: 'components_LandingPage_Block5_PlanCard_Plan2_Title',
      desc: '',
      args: [],
    );
  }

  /// `Plano Scale`
  String get components_LandingPage_Block5_PlanCard_Plan3_Title {
    return Intl.message(
      'Plano Scale',
      name: 'components_LandingPage_Block5_PlanCard_Plan3_Title',
      desc: '',
      args: [],
    );
  }

  /// `/ produto`
  String get components_LandingPage_Block5_PlanCard_Plan1_PriceComplement {
    return Intl.message(
      '/ produto',
      name: 'components_LandingPage_Block5_PlanCard_Plan1_PriceComplement',
      desc: '',
      args: [],
    );
  }

  /// `/ mês`
  String get components_LandingPage_Block5_PlanCard_Plan2And3_PriceComplement {
    return Intl.message(
      '/ mês',
      name: 'components_LandingPage_Block5_PlanCard_Plan2And3_PriceComplement',
      desc: '',
      args: [],
    );
  }

  /// `Pague apenas o que usar`
  String
      get components_LandingPage_Block5_PlanCard_Plan1_PriceComplement_KnowMore_Title {
    return Intl.message(
      'Pague apenas o que usar',
      name:
          'components_LandingPage_Block5_PlanCard_Plan1_PriceComplement_KnowMore_Title',
      desc: '',
      args: [],
    );
  }

  /// `    Cadastre até {nProducts} produtos e pague {strPrice} por produto cadastrado.\n    Você pode adicionar os produtos de sua loja na Ecommercefy, para centralizar o controle das informações, automatizar procedimentos e escalar suas vendas.`
  String
      components_LandingPage_Block5_PlanCard_Plan1_PriceComplement_KnowMore_BodyText(
          Object nProducts, Object strPrice) {
    return Intl.message(
      '    Cadastre até $nProducts produtos e pague $strPrice por produto cadastrado.\n    Você pode adicionar os produtos de sua loja na Ecommercefy, para centralizar o controle das informações, automatizar procedimentos e escalar suas vendas.',
      name:
          'components_LandingPage_Block5_PlanCard_Plan1_PriceComplement_KnowMore_BodyText',
      desc: '',
      args: [nProducts, strPrice],
    );
  }

  /// `Pague apenas o que usar. Cobrado mensalmente.`
  String get components_LandingPage_Block5_PlanCard_Plan1_MonthlySubtitle {
    return Intl.message(
      'Pague apenas o que usar. Cobrado mensalmente.',
      name: 'components_LandingPage_Block5_PlanCard_Plan1_MonthlySubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Pague apenas o que usar. Valor mensal, cobrado anualmente.`
  String get components_LandingPage_Block5_PlanCard_Plan1_YearlySubtitle {
    return Intl.message(
      'Pague apenas o que usar. Valor mensal, cobrado anualmente.',
      name: 'components_LandingPage_Block5_PlanCard_Plan1_YearlySubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Valor fixo, cobrado mensalmente.`
  String get components_LandingPage_Block5_PlanCard_Plan2And3_MonthlySubtitle {
    return Intl.message(
      'Valor fixo, cobrado mensalmente.',
      name: 'components_LandingPage_Block5_PlanCard_Plan2And3_MonthlySubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Valor fixo mensal, cobrado anualmente.`
  String get components_LandingPage_Block5_PlanCard_Plan2And3_YearlySubtitle {
    return Intl.message(
      'Valor fixo mensal, cobrado anualmente.',
      name: 'components_LandingPage_Block5_PlanCard_Plan2And3_YearlySubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Até {nProducts} produtos ({strPrice} / produto cadastrado).`
  String components_LandingPage_Block5_Plan1ListItem_MaxProductsAmount(
      Object nProducts, Object strPrice) {
    return Intl.message(
      'Até $nProducts produtos ($strPrice / produto cadastrado).',
      name: 'components_LandingPage_Block5_Plan1ListItem_MaxProductsAmount',
      desc: '',
      args: [nProducts, strPrice],
    );
  }

  /// `Até {nStores} lojas.`
  String components_LandingPage_Block5_Plan1ListItem_StoresAmount(
      Object nStores) {
    return Intl.message(
      'Até $nStores lojas.',
      name: 'components_LandingPage_Block5_Plan1ListItem_StoresAmount',
      desc: '',
      args: [nStores],
    );
  }

  /// `1 colaborador.`
  String get components_LandingPage_Block5_Plan1ListItem_CollaboratorsAmount {
    return Intl.message(
      '1 colaborador.',
      name: 'components_LandingPage_Block5_Plan1ListItem_CollaboratorsAmount',
      desc: '',
      args: [],
    );
  }

  /// `Até {nProducts} produtos.`
  String
      components_LandingPage_Block5_PlanListItem_Plan2And3CommonItem_MaxProductsAmount(
          Object nProducts) {
    return Intl.message(
      'Até $nProducts produtos.',
      name:
          'components_LandingPage_Block5_PlanListItem_Plan2And3CommonItem_MaxProductsAmount',
      desc: '',
      args: [nProducts],
    );
  }

  /// `Lojas ilimitadas.`
  String
      get components_LandingPage_Block5_PlanListItem_Plan2And3CommonItem_StoresAmount {
    return Intl.message(
      'Lojas ilimitadas.',
      name:
          'components_LandingPage_Block5_PlanListItem_Plan2And3CommonItem_StoresAmount',
      desc: '',
      args: [],
    );
  }

  /// `Colaboradores ilimitadas.`
  String
      get components_LandingPage_Block5_PlanListItem_Plan2And3CommonItem_CollaboratorsAmount {
    return Intl.message(
      'Colaboradores ilimitadas.',
      name:
          'components_LandingPage_Block5_PlanListItem_Plan2And3CommonItem_CollaboratorsAmount',
      desc: '',
      args: [],
    );
  }

  /// `Integração com marketplaces.`
  String get components_LandingPage_Block5_PlanListItem_CommonItem_1 {
    return Intl.message(
      'Integração com marketplaces.',
      name: 'components_LandingPage_Block5_PlanListItem_CommonItem_1',
      desc: '',
      args: [],
    );
  }

  /// `Integração com redes sociais, com postagens automatizadas.`
  String get components_LandingPage_Block5_PlanListItem_CommonItem_2 {
    return Intl.message(
      'Integração com redes sociais, com postagens automatizadas.',
      name: 'components_LandingPage_Block5_PlanListItem_CommonItem_2',
      desc: '',
      args: [],
    );
  }

  /// `Gerador de publicações de preço.`
  String get components_LandingPage_Block5_PlanListItem_CommonItem_3 {
    return Intl.message(
      'Gerador de publicações de preço.',
      name: 'components_LandingPage_Block5_PlanListItem_CommonItem_3',
      desc: '',
      args: [],
    );
  }

  /// `Crie imagens de forma automática para promover os seus produtos nas redes sociais. Utilize um fundo de imagem personalizado, o gerador adicionará o nome, a foto e o preço dos seus produtos, para postar em Stories, em Status ou no Feed.`
  String get components_LandingPage_Block5_PlanListItem_CommonItem_3_MoreInfo {
    return Intl.message(
      'Crie imagens de forma automática para promover os seus produtos nas redes sociais. Utilize um fundo de imagem personalizado, o gerador adicionará o nome, a foto e o preço dos seus produtos, para postar em Stories, em Status ou no Feed.',
      name: 'components_LandingPage_Block5_PlanListItem_CommonItem_3_MoreInfo',
      desc: '',
      args: [],
    );
  }

  /// `Integração com o Google Shoppings.`
  String get components_LandingPage_Block5_PlanListItem_CommonItem_4 {
    return Intl.message(
      'Integração com o Google Shoppings.',
      name: 'components_LandingPage_Block5_PlanListItem_CommonItem_4',
      desc: '',
      args: [],
    );
  }

  /// `Exporte dados e estatísticas de produtos de forma personalizada.`
  String get components_LandingPage_Block5_PlanListItem_CommonItem_5 {
    return Intl.message(
      'Exporte dados e estatísticas de produtos de forma personalizada.',
      name: 'components_LandingPage_Block5_PlanListItem_CommonItem_5',
      desc: '',
      args: [],
    );
  }

  /// `Adicione os produtos de sua loja na Ecommercefy, para centralizar o controle das informações, automatizar procedimentos e escalar suas vendas.`
  String
      get components_LandingPage_Block5_Plan1ListItem_MaxProductsAmount_MoreInfo {
    return Intl.message(
      'Adicione os produtos de sua loja na Ecommercefy, para centralizar o controle das informações, automatizar procedimentos e escalar suas vendas.',
      name:
          'components_LandingPage_Block5_Plan1ListItem_MaxProductsAmount_MoreInfo',
      desc: '',
      args: [],
    );
  }

  /// `Caso você tenha mais de uma conta em um marketplace, ou mais de uma loja física, por exemplo, você pode criar diferentes lojas dentro da Ecommercefy, usando apenas 1 conta, para gerenciá-las individualmente.`
  String get components_LandingPage_Block5_PlanListItem_StoresAmount_MoreInfo {
    return Intl.message(
      'Caso você tenha mais de uma conta em um marketplace, ou mais de uma loja física, por exemplo, você pode criar diferentes lojas dentro da Ecommercefy, usando apenas 1 conta, para gerenciá-las individualmente.',
      name: 'components_LandingPage_Block5_PlanListItem_StoresAmount_MoreInfo',
      desc: '',
      args: [],
    );
  }

  /// `Caso você precise da ajuda de uma pessoa para administrar a sua loja, você pode adicioná-la como colaboradora, sem custo adicional. Delegue funções e economize tempo.`
  String
      get components_LandingPage_Block5_PlanListItem_CollaboratorsAmount_MoreInfo {
    return Intl.message(
      'Caso você precise da ajuda de uma pessoa para administrar a sua loja, você pode adicioná-la como colaboradora, sem custo adicional. Delegue funções e economize tempo.',
      name:
          'components_LandingPage_Block5_PlanListItem_CollaboratorsAmount_MoreInfo',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get components_LandingPage_Block5_KnowMoreDialog_PopActionText {
    return Intl.message(
      'Ok',
      name: 'components_LandingPage_Block5_KnowMoreDialog_PopActionText',
      desc: '',
      args: [],
    );
  }

  /// `Perguntas frequentes`
  String get components_LandingPage_Block6_Title {
    return Intl.message(
      'Perguntas frequentes',
      name: 'components_LandingPage_Block6_Title',
      desc: '',
      args: [],
    );
  }

  /// `E se eu não ficar satisfeito com a Ecommercefy?`
  String get components_LandingPage_Block6_FaqListItem1_Question {
    return Intl.message(
      'E se eu não ficar satisfeito com a Ecommercefy?',
      name: 'components_LandingPage_Block6_FaqListItem1_Question',
      desc: '',
      args: [],
    );
  }

  /// `Você tem 30 dias para testar a Ecommercefy. Caso não fique satisfeito, você pode cancelar a qualquer momento, de forma simples, sem pagar nada.`
  String get components_LandingPage_Block6_FaqListItem1_Answer {
    return Intl.message(
      'Você tem 30 dias para testar a Ecommercefy. Caso não fique satisfeito, você pode cancelar a qualquer momento, de forma simples, sem pagar nada.',
      name: 'components_LandingPage_Block6_FaqListItem1_Answer',
      desc: '',
      args: [],
    );
  }

  /// `Nenhum dos planos se adéquam às minhas necessidades, gostaria de uma oferta especial. O que devo fazer?`
  String get components_LandingPage_Block6_FaqListItem2_Question {
    return Intl.message(
      'Nenhum dos planos se adéquam às minhas necessidades, gostaria de uma oferta especial. O que devo fazer?',
      name: 'components_LandingPage_Block6_FaqListItem2_Question',
      desc: '',
      args: [],
    );
  }

  /// `Envie um e-mail descrevendo as suas necessidades para comercial@ecommercefy.app. Ficaremos felizes em atendê-lo!`
  String get components_LandingPage_Block6_FaqListItem2_Answer {
    return Intl.message(
      'Envie um e-mail descrevendo as suas necessidades para comercial@ecommercefy.app. Ficaremos felizes em atendê-lo!',
      name: 'components_LandingPage_Block6_FaqListItem2_Answer',
      desc: '',
      args: [],
    );
  }

  /// `Tenho outras dúvidas. Como posso entrar em contato?`
  String get components_LandingPage_Block6_FaqListItem3_Question {
    return Intl.message(
      'Tenho outras dúvidas. Como posso entrar em contato?',
      name: 'components_LandingPage_Block6_FaqListItem3_Question',
      desc: '',
      args: [],
    );
  }

  /// `Sem problemas! Envie um e-mail para contato@ecommercefy.app com as suas dúvidas.`
  String get components_LandingPage_Block6_FaqListItem3_Answer {
    return Intl.message(
      'Sem problemas! Envie um e-mail para contato@ecommercefy.app com as suas dúvidas.',
      name: 'components_LandingPage_Block6_FaqListItem3_Answer',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'pt', countryCode: 'BR'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
