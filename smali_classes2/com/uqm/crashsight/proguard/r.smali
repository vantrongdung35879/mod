.class public Lcom/uqm/crashsight/proguard/r;
.super Ljava/lang/Object;
.source "CrashSight"


# static fields
.field private static m:Ljava/net/Proxy;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:J

.field public i:J

.field public j:J

.field public k:I

.field public l:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1012
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1013
    iput-object v0, p0, Lcom/uqm/crashsight/proguard/r;->a:Ljava/lang/String;

    .line 1014
    iput-object v0, p0, Lcom/uqm/crashsight/proguard/r;->b:Ljava/lang/String;

    .line 1015
    iput-object v0, p0, Lcom/uqm/crashsight/proguard/r;->c:Ljava/lang/String;

    .line 1016
    iput-object v0, p0, Lcom/uqm/crashsight/proguard/r;->d:Ljava/lang/String;

    .line 1017
    iput-object v0, p0, Lcom/uqm/crashsight/proguard/r;->e:Ljava/lang/String;

    .line 1018
    iput-object v0, p0, Lcom/uqm/crashsight/proguard/r;->f:Ljava/lang/String;

    .line 1019
    iput-object v0, p0, Lcom/uqm/crashsight/proguard/r;->g:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 1020
    iput-wide v0, p0, Lcom/uqm/crashsight/proguard/r;->h:J

    .line 1021
    iput-wide v0, p0, Lcom/uqm/crashsight/proguard/r;->i:J

    .line 1022
    iput-wide v0, p0, Lcom/uqm/crashsight/proguard/r;->j:J

    const/4 v0, 0x0

    .line 1023
    iput v0, p0, Lcom/uqm/crashsight/proguard/r;->k:I

    const-wide/16 v0, 0x0

    .line 1024
    iput-wide v0, p0, Lcom/uqm/crashsight/proguard/r;->l:J

    return-void
.end method

.method public static a()Ljava/net/Proxy;
    .locals 1

    .line 51
    sget-object v0, Lcom/uqm/crashsight/proguard/r;->m:Ljava/net/Proxy;

    return-object v0
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 3

    .line 24
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 25
    sput-object p0, Lcom/uqm/crashsight/proguard/r;->m:Ljava/net/Proxy;

    return-void

    .line 28
    :cond_0
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 29
    sput-object v0, Lcom/uqm/crashsight/proguard/r;->m:Ljava/net/Proxy;

    return-void
.end method

.method public static a(Ljava/net/InetAddress;I)V
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 40
    sput-object p0, Lcom/uqm/crashsight/proguard/r;->m:Ljava/net/Proxy;

    return-void

    .line 43
    :cond_0
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 44
    sput-object v0, Lcom/uqm/crashsight/proguard/r;->m:Ljava/net/Proxy;

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 1031
    iget-object v0, p0, Lcom/uqm/crashsight/proguard/r;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/v;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/proguard/r;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/v;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/proguard/r;->c:Ljava/lang/String;

    .line 1032
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/v;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/proguard/r;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/v;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/proguard/r;->e:Ljava/lang/String;

    .line 1033
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/v;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/proguard/r;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/v;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
