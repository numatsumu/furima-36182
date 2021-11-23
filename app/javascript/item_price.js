window.addEventListener('load', function(){
  const priceInput = document.getElementById("item-price")
  const taxPrice = document.getElementById("add-tax-price")
  const profit = document.getElementById("profit")

  priceInput.addEventListener('input', function(){
    const price = priceInput.value
    charge = Math.floor(price * 0.1)
    taxPrice.innerHTML = charge.toLocaleString()
    profit.innerHTML = (price - charge).toLocaleString()
  })
})