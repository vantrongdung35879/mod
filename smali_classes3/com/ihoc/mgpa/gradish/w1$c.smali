.class Lcom/ihoc/mgpa/gradish/w1$c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihoc/mgpa/gradish/w1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ihoc/mgpa/gradish/w1$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/w1$c;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 p1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/NetworkInfo;

    .line 3
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v1, 0x0

    const-string v3, ""

    if-eqz v0, :cond_0

    .line 4
    :try_start_1
    const-string/jumbo p2, "wifi is disconnected!"

    new-array v0, p1, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-static {}, Lcom/ihoc/mgpa/gradish/u1;->a()Lcom/ihoc/mgpa/gradish/u1;

    move-result-object p2

    const/16 v0, 0x8

    .line 6
    invoke-virtual {p2, v0, v3, v1, v2}, Lcom/ihoc/mgpa/gradish/u1;->a(ILjava/lang/String;J)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/ihoc/mgpa/gradish/x1;->a(Landroid/content/Context;)V

    .line 9
    sget-boolean p2, Lcom/ihoc/mgpa/gradish/w1;->a:Z

    if-eqz p2, :cond_1

    .line 10
    const-string/jumbo p2, "wifi is available, and app is in foreground, start to check router!"

    new-array v0, p1, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lcom/ihoc/mgpa/gradish/u1;->a()Lcom/ihoc/mgpa/gradish/u1;

    move-result-object p2

    const/4 v0, 0x4

    .line 12
    invoke-virtual {p2, v0, v3, v1, v2}, Lcom/ihoc/mgpa/gradish/u1;->a(ILjava/lang/String;J)V

    goto :goto_0

    .line 14
    :cond_1
    const-string/jumbo p2, "wifi is available, but app is in background, no need to check&connect!"

    new-array v0, p1, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 17
    :cond_2
    const-string v0, "network state changed, wifi state: %s"

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, p1

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 21
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "network state changed, check wifi state exception!"

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method
