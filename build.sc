import mill._, scalalib._

object foo extends Cross[Foo](1.to(20).map(_.toString))
trait Foo extends Cross.Module[String] with JavaModule {
  def ivyDeps = Agg(ivy"org.slf4j:slf4j-api:1.7.25")
}
