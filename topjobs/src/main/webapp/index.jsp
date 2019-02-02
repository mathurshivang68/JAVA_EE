<html>
<head>
<script type="text/javascript">
function calculate() {
   var price=0, discount=0, afterDiscount=0;
    price = Number(document.discountCalculator.price.value);
    discount = Number(document.discountCalculator.discount.value);


 afterDiscount=price - ( price*discount/100 );

   document.discountCalculator.price.value=price.toFixed(2);
   document.discountCalculator.discount.value=discount.toFixed(2);
   document.discountCalculator.afterDiscount.value=afterDiscount.toFixed(2);

}
</script>
</head>
<body>
<% response.sendRedirect("/topjobs/register"); %>
</body>
</html>