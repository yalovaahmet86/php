<?php echo "merhaba" ?>
<!DOCTYPE html>
<html>
<head>
<title>Title of the document</title>
  <script>
  // Initialize the agent on page load.
  const fpPromise = import('https://fpjscdn.net/v3/0tZ76oEWXRmzVUIRvxfU')
    .then(FingerprintJS => FingerprintJS.load({
      region: "ap"
    }))

  // Get the visitorId when you need it.
  fpPromise
    .then(fp => fp.get())
    .then(result => {
      const visitorId = result.visitorId
      console.log(visitorId)
    })
</script>
</head>

<body>
The content of the document......
</body>

</html>
