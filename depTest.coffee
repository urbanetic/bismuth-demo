console.log('Depends Test')

Depends.debug = true

Depends.on 'foo', =>
  console.log('Foo is here', @Foo)

setTimeout(
  =>
    Depends.add 'foo', =>
      @Foo = {foo: 'bar'}
  2000
)
