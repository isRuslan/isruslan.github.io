setTimeout ( ->
  loadButton = document.getElementById('load-more')

  feed = new Instafeed
    get: 'user'
    userId: 522307946
    accessToken: '522307946.467ede5.101cf0f1132f4e868b24b048ca3abbfc'
    clientId: '7c97ccb1c4ca488f891827d57e2fd1fe'
    template: '<a href="{{link}}" target="_blank"><img src="{{image}}" title="View on Instagram" /></a>'
    limit: 2
    resolution: 'standard_resolution'
    after: ->
      loadButton.style.display = 'none' if not @.hasNext()

  loadButton.addEventListener('click', ->
    feed.next()
  )
  
  feed.run()
), 0
