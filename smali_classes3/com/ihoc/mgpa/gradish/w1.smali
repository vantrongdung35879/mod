.class public abstract Lcom/ihoc/mgpa/gradish/w1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ihoc/mgpa/gradish/w1$c;
    }
.end annotation


# static fields
.field public static a:Z = true

.field private static b:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()J
    .locals 4

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/ihoc/mgpa/gradish/w1;->b:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method static synthetic a(J)J
    .locals 0

    .line 1
    sput-wide p0, Lcom/ihoc/mgpa/gradish/w1;->b:J

    return-wide p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .line 3
    invoke-static {p0}, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->get(Landroid/content/Context;)Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;

    move-result-object p0

    new-instance v0, Lcom/ihoc/mgpa/gradish/w1$a;

    invoke-direct {v0}, Lcom/ihoc/mgpa/gradish/w1$a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->addListener(Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks$Listener;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    .line 2
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 3
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x22

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 5
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/ihoc/mgpa/gradish/w1$c;

    invoke-direct {v1, v2}, Lcom/ihoc/mgpa/gradish/w1$c;-><init>(Lcom/ihoc/mgpa/gradish/w1$a;)V

    const/4 v2, 0x4

    invoke-static {v0, v1, p0, v2}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/ihoc/mgpa/gradish/w1$c;

    invoke-direct {v1, v2}, Lcom/ihoc/mgpa/gradish/w1$c;-><init>(Lcom/ihoc/mgpa/gradish/w1$a;)V

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 10
    :cond_1
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 11
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 13
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    new-instance v1, Lcom/ihoc/mgpa/gradish/w1$b;

    invoke-direct {v1}, Lcom/ihoc/mgpa/gradish/w1$b;-><init>()V

    invoke-virtual {p0, v0, v1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :goto_0
    return-void
.end method
