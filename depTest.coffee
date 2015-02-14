console.log('Depends Test')

#Depends.debug = true

Depends.on 'foo', =>
  console.log('Foo is here', @Foo)

setTimeout(
  Meteor.bindEnvironment =>
    Depends.define 'foo', =>
      @Foo = {foo: 'bar'}
  2000
)

Depends.on 'Entities', (Entities) =>
  console.log('Entities', Entities?)
