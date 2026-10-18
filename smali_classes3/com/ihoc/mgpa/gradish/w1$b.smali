.class Lcom/ihoc/mgpa/gradish/w1$b;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/mgpa/gradish/w1;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 4

    .line 1
    sget-boolean p1, Lcom/ihoc/mgpa/gradish/w1;->a:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    new-array p1, v0, [Ljava/lang/Object;

    const-string/jumbo v0, "wifi is available, and app is in foreground, start to check router!"

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ihoc/mgpa/gradish/x1;->a(Landroid/content/Context;)V

    .line 4
    invoke-static {}, Lcom/ihoc/mgpa/gradish/u1;->a()Lcom/ihoc/mgpa/gradish/u1;

    move-result-object p1

    .line 5
    const-string v0, ""

    const-wide/16 v1, 0x0

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/ihoc/mgpa/gradish/u1;->a(ILjava/lang/String;J)V

    goto :goto_0

    .line 7
    :cond_0
    new-array p1, v0, [Ljava/lang/Object;

    const-string/jumbo v0, "wifi is available, but app is in background, no need to check&connect!"

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 4

    const/4 p1, 0x0

    .line 1
    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo v0, "wifi is lost, start to release router resource!"

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/gradish/u1;->a()Lcom/ihoc/mgpa/gradish/u1;

    move-result-object p1

    .line 3
    const-string v0, ""

    const-wide/16 v1, 0x0

    const/16 v3, 0x8

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/ihoc/mgpa/gradish/u1;->a(ILjava/lang/String;J)V

    return-void
.end method
