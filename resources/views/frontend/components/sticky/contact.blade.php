<style>
  /* zalo, phone */
  #button-contact-vr {
    position: fixed;
    bottom: 25px;
    right: 25px;
    z-index: 99999;
  }

  /*phone*/
  #button-contact-vr .button-contact {
    position: relative;
  }

  #button-contact-vr .button-contact .phone-vr {
    position: relative;
    visibility: visible;
    background-color: transparent;
    width: 50px;
    height: 50px;
    cursor: pointer;
    border-radius:50%; 
    z-index: 11;
    margin-top: 20px;
    display: flex;
    justify-content: center;
    align-items: center;
  }

  .phone-vr-circle-fill {
    width: 65px;
    height: 65px;
    top: 12px;
    left: 12px;
    position: absolute;
    border-radius: 50%;
    border: 2px solid transparent;
    -webkit-animation: phone-vr-circle-fill 2.3s infinite ease-in-out;
    animation: phone-vr-circle-fill 2.3s infinite ease-in-out;
    transition: all .5s;
    -webkit-transform-origin: 50% 50%;
    -ms-transform-origin: 50% 50%;
    transform-origin: 50% 50%;
    -webkit-animuiion: zoom 1.3s infinite;
    animation: zoom 1.3s infinite;
  }

  .phone-vr-img-circle {
    width: 40px;
    height: 40px;
    border-radius: 50%;
    -webkit-animation: phonering-alo-circle-img-anim 1s infinite ease-in-out;
    animation: phone-vr-circle-fill 1s infinite ease-in-out;
    box-shadow: 0 2px 7px -3px rgba(0,0,0,.25), 0 4px 15px rgba(0,0,0,.09);

  }

  .phone-vr-img-circle a {
    display: block;
    line-height: 50px;
  }



  @-webkit-keyframes phone-vr-circle-fill {
    0% {
      -webkit-transform: rotate(0) scale(1) skew(1deg);
    }

    10% {
      -webkit-transform: rotate(-25deg) scale(1) skew(1deg);
    }

    20% {
      -webkit-transform: rotate(25deg) scale(1) skew(1deg);
    }

    30% {
      -webkit-transform: rotate(-25deg) scale(1) skew(1deg);
    }

    40% {
      -webkit-transform: rotate(25deg) scale(1) skew(1deg);
    }

    50% {
      -webkit-transform: rotate(0) scale(1) skew(1deg);
    }

    100% {
      -webkit-transform: rotate(0) scale(1) skew(1deg);
    }
  }

  @-webkit-keyframes zoom {
    0% {
      transform: scale(.9)
    }

    70% {
      transform: scale(1);
      box-shadow: 0 0 0 15px transparent
    }

    100% {
      transform: scale(.9);
      box-shadow: 0 0 0 0 transparent
    }
  }

  @keyframes zoom {
    0% {
      transform: scale(.9)
    }

    70% {
      transform: scale(1);
      box-shadow: 0 0 0 15px transparent
    }

    100% {
      transform: scale(.9);
      box-shadow: 0 0 0 0 transparent
    }
  }

  .phone-bar a {
    position: fixed;
    bottom: 25px;
    left: 30px;
    z-index: -1;
    color: #fff;
    font-size: 16px;
    padding: 8px 15px 7px 50px;
    border-radius: 100px;
    white-space: nowrap;
  }

  .phone-bar a:hover {
    opacity: 0.8;
    color: #fff;
  }

  @media(max-width: 736px) {
    .phone-bar {
      display: none;
    }
  }

</style>
<div id="button-contact-vr">
  <!-- contact -->
  <!-- end contact -->

  <!-- viber -->
  <!-- end viber -->
  @if (isset($web_information->social->zalo) && $web_information->social->zalo != '')
  <!-- zalo -->
  <div id="zalo-vr" class="button-contact">
    <div class="phone-vr">
      <div class="phone-vr-img-circle">
        <a target="_blank" href="{{ $web_information->social->zalo }}">
          <img src="{{ asset('images/zalo-icon.png') }}" alt="zalo"/>
        </a>
      </div>
    </div>
  </div>
  <!-- end zalo -->
  @endif
  @if (isset($web_information->social->messenger) && $web_information->social->messenger != '')
    <!-- Phone -->
    <div id="phone-vr" class="button-contact">
      <div class="phone-vr">
        <div class="phone-vr-img-circle">
          <a href="{{ $web_information->social->messenger }}">
            <img src="{{ asset('images/message.png') }}" alt="messenger" />
          </a>
        </div>
      </div>
    </div>
    <!-- end phone -->
  @endif
</div>
