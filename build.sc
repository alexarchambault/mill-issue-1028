import mill._, scalalib._

object foo extends Cross[Foo](1.to(20).map(_.toString): _*)
class Foo(nr: String) extends JavaModule {
  def ivyDeps = Agg(ivy"org.slf4j:slf4j-api:1.7.25")
}