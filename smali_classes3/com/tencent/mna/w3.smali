.class public Lcom/tencent/mna/w3;
.super Ljava/lang/Object;
.source "UpnpDeviceScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mna/w3$a;
    }
.end annotation


# static fields
.field private static b:Ljava/lang/String; = "UpnpDeviceScanner"


# instance fields
.field private a:Lcom/tencent/mna/w3$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/tencent/mna/w3$a;->a(Landroid/content/Context;)Lcom/tencent/mna/w3$a;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/mna/w3;->a:Lcom/tencent/mna/w3$a;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/w3;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public b()Lcom/tencent/mna/v3;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/w3;->a:Lcom/tencent/mna/w3$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/mna/w3;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": getGateWayDevice socket is null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    return-object v1

    .line 7
    :cond_0
    :try_start_0
    const-string v2, "ST:urn:schemas-upnp-org:device:InternetGatewayDevice:1"

    invoke-virtual {v0, v2}, Lcom/tencent/mna/w3$a;->b(Ljava/lang/String;)V

    const/4 v0, 0x2

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_2

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/tencent/mna/w3;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": getGateWayDevice wait for dev response"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/tencent/mna/w3;->a:Lcom/tencent/mna/w3$a;

    invoke-virtual {v0}, Lcom/tencent/mna/w3$a;->b()Ljava/net/DatagramPacket;

    move-result-object v0

    .line 15
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-static {v0}, Lcom/tencent/mna/v3;->a(Ljava/lang/String;)Lcom/tencent/mna/v3;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 21
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/mna/w3;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": getGateWayDevice found gateway device and stop receive"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    goto :goto_1

    :catch_0
    move-object v1, v0

    goto :goto_2

    :cond_1
    move v0, v2

    goto :goto_0

    .line 28
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/tencent/mna/w3;->a:Lcom/tencent/mna/w3$a;

    if-eqz v0, :cond_3

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    .line 30
    :catch_1
    :goto_2
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/mna/w3;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": getGateWayDevice socket time out and stop receive"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    iget-object v0, p0, Lcom/tencent/mna/w3;->a:Lcom/tencent/mna/w3$a;

    if-eqz v0, :cond_3

    .line 29
    :goto_3
    invoke-virtual {v0}, Lcom/tencent/mna/w3$a;->a()V

    :cond_3
    return-object v1

    .line 32
    :goto_4
    iget-object v1, p0, Lcom/tencent/mna/w3;->a:Lcom/tencent/mna/w3$a;

    if-eqz v1, :cond_4

    .line 33
    invoke-virtual {v1}, Lcom/tencent/mna/w3$a;->a()V

    .line 35
    :cond_4
    throw v0
.end method
