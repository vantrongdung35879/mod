.class public final Lcom/tencent/mna/base/vendor/h;
.super Ljava/lang/Object;
.source "VendorIdentifier.java"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/mna/base/vendor/d;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/tencent/mna/base/vendor/d;

.field private static c:Lcom/tencent/mna/base/vendor/d;

.field private static d:Lcom/tencent/mna/i1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/mna/base/vendor/h$a;

    invoke-direct {v0}, Lcom/tencent/mna/base/vendor/h$a;-><init>()V

    sput-object v0, Lcom/tencent/mna/base/vendor/h;->a:Ljava/util/List;

    .line 12
    new-instance v0, Lcom/tencent/mna/base/vendor/g;

    invoke-direct {v0}, Lcom/tencent/mna/base/vendor/g;-><init>()V

    sput-object v0, Lcom/tencent/mna/base/vendor/h;->b:Lcom/tencent/mna/base/vendor/d;

    const/4 v0, 0x0

    .line 17
    sput-object v0, Lcom/tencent/mna/base/vendor/h;->c:Lcom/tencent/mna/base/vendor/d;

    .line 18
    sput-object v0, Lcom/tencent/mna/base/vendor/h;->d:Lcom/tencent/mna/i1;

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 1

    .line 17
    invoke-static {p0}, Lcom/tencent/mna/base/vendor/h;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 20
    :cond_0
    invoke-static {p0}, Lcom/tencent/mna/base/utils/c;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, -0x1

    return p0

    .line 23
    :cond_1
    invoke-static {p0}, Lcom/tencent/mna/base/vendor/h;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p0, 0x1

    return p0

    .line 26
    :cond_2
    invoke-static {p0}, Lcom/tencent/mna/base/vendor/h;->b(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    const/4 p0, 0x3

    return p0
.end method

.method private static a()Lcom/tencent/mna/base/vendor/d;
    .locals 3

    .line 1
    sget-object v0, Lcom/tencent/mna/base/vendor/h;->c:Lcom/tencent/mna/base/vendor/d;

    if-eqz v0, :cond_0

    return-object v0

    .line 4
    :cond_0
    sget-object v0, Lcom/tencent/mna/base/vendor/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mna/base/vendor/d;

    .line 5
    invoke-interface {v1}, Lcom/tencent/mna/base/vendor/d;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    sput-object v1, Lcom/tencent/mna/base/vendor/h;->c:Lcom/tencent/mna/base/vendor/d;

    goto :goto_0

    .line 9
    :cond_2
    sget-object v0, Lcom/tencent/mna/base/vendor/h;->c:Lcom/tencent/mna/base/vendor/d;

    if-nez v0, :cond_3

    .line 10
    sget-object v0, Lcom/tencent/mna/base/vendor/h;->b:Lcom/tencent/mna/base/vendor/d;

    sput-object v0, Lcom/tencent/mna/base/vendor/h;->c:Lcom/tencent/mna/base/vendor/d;

    .line 12
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "resolveDefaultVendor:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/mna/base/vendor/h;->c:Lcom/tencent/mna/base/vendor/d;

    invoke-interface {v1}, Lcom/tencent/mna/base/vendor/d;->b()Lcom/tencent/mna/base/vendor/d$a;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mna/base/vendor/d$a;->mOrigName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 13
    sget-object v0, Lcom/tencent/mna/base/vendor/h;->c:Lcom/tencent/mna/base/vendor/d;

    return-object v0
.end method

.method public static a(Lcom/tencent/mna/i1;)V
    .locals 0

    .line 14
    sput-object p0, Lcom/tencent/mna/base/vendor/h;->d:Lcom/tencent/mna/i1;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/ConnectivityManager$NetworkCallback;)Z
    .locals 1

    .line 16
    invoke-static {}, Lcom/tencent/mna/base/vendor/h;->b()Lcom/tencent/mna/base/vendor/d;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/tencent/mna/base/vendor/d;->a(Landroid/content/Context;Landroid/net/ConnectivityManager$NetworkCallback;)Z

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Network;)Z
    .locals 1

    .line 15
    invoke-static {}, Lcom/tencent/mna/base/vendor/h;->b()Lcom/tencent/mna/base/vendor/d;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/tencent/mna/base/vendor/d;->a(Landroid/content/Context;Landroid/net/Network;)Z

    move-result p0

    return p0
.end method

.method private static b()Lcom/tencent/mna/base/vendor/d;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/base/vendor/h;->d:Lcom/tencent/mna/i1;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/tencent/mna/i1;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    const-string v0, "resolveDefaultVendor failed, be intercepted."

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/tencent/mna/base/vendor/h;->b:Lcom/tencent/mna/base/vendor/d;

    return-object v0

    .line 7
    :cond_0
    invoke-static {}, Lcom/tencent/mna/base/vendor/h;->a()Lcom/tencent/mna/base/vendor/d;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1

    .line 8
    invoke-static {}, Lcom/tencent/mna/base/vendor/h;->b()Lcom/tencent/mna/base/vendor/d;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/mna/base/vendor/d;->c(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/mna/base/vendor/h;->b()Lcom/tencent/mna/base/vendor/d;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/mna/base/vendor/d;->b(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/mna/base/vendor/h;->b()Lcom/tencent/mna/base/vendor/d;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/mna/base/vendor/d;->a(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
