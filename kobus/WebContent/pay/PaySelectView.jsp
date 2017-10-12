<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>우리반연습</title>
<link rel="stylesheet" type="text/css" href="../css/pay.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="../js/pay.js"></script>
</head>


<body>

<div class="container">
    <div class='row'>
        <div class='col-md-4'></div>
        <div class='col-md-4'>
          <script src='https://js.stripe.com/v2/' type='text/javascript'></script>
          <form accept-charset="UTF-8" action="/" class="require-validation" data-cc-on-file="false" data-stripe-publishable-key="pk_bQQaTxnaZlzv4FnnuZ28LFHccVSaj" id="payment-form" method="post">
          <div style="margin:0;padding:0;display:inline">ㅇ
          <input name="utf8" type="hidden" value="✓" /><input name="_method" type="hidden" value="PUT" />
          <input name="authenticity_token" type="hidden" value="qLZ9cScer7ZxqulsUWazw4x3cSEzv899SP/7ThPCOV8=" />
          </div>
            <div class='form-row'>
              <div class='col-xs-12 form-group card required'>
                <label class='control-label'>카드번호</label>
                <input autocomplete='off' class='form-control card-number' size='4' type='text'>
              </div>
            </div>
            <div class='form-row'>
<!--               <div class='col-xs-4 form-group cvc required'> -->
<!--                 <label class='control-label'>CVC</label> -->
<!--                 <input autocomplete='off' class='form-control card-cvc' placeholder='ex. 311' size='4' type='text'> -->
<!--               </div> -->
              <div class='col-xs-4 form-group expiration required'>
                <label class='control-label' >유효기간 월(MONTH)</label>
                <input class='form-control card-expiry-month' placeholder='MM' size='10' type='text'>
              </div>
              <div class='col-xs-4 form-group expiration required'>
                <label class='control-label' size='10'>유효기간 년(YEAR) </label>
                <input class='form-control card-expiry-year' placeholder='YYYY' size='10' type='text'>
              </div>
            </div>
                        <div class='form-row'>
              <div class='col-xs-12 form-group required'>
                <label class='control-label'>카드 비밀번호</label>
                <input class='form-control' placeholder='비밀번호 앞 두자리' size='10' type='text'>
              </div>
            </div>
                        <div class='form-row'>
              <div class='col-xs-12 form-group required'>
                <label class='control-label'>생년월일 8자리(YYYYMMDD)</label>
                <input class='form-control' placeholder='예)19930302' size='10' type='text'>
              </div>
            </div>
            <div class='form-row'>
              <div class='col-md-12'>
                <div class='form-control total btn btn-info'>
                  총 결제 금액:
                  <span class='amount'>300원</span>
                </div>
              </div>
            </div>
            <div class='form-row'>
              <div class='col-md-12 form-group'>
                <button class='form-control btn btn-primary submit-button' type='submit'> 결제하기  </button>
              </div>
            </div>
            <div class='form-row'>
              <div class='col-md-12 error form-group hide'>
                <div class='alert-danger alert'>
                  Please correct the errors and try again.
                </div>
              </div>
            </div>
          </form>
        </div>
        <div class='col-md-4'></div>
    </div>
</div>

</body>
</html>