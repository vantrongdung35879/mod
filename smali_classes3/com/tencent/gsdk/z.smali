.class public final Lcom/tencent/gsdk/z;
.super Ljava/lang/Object;
.source "Hardware.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/tencent/gsdk/y0;->h()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/gsdk/z;->a:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/tencent/gsdk/y0;->e()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/gsdk/z;->b:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/tencent/gsdk/y0;->b()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Hardware"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/tencent/gsdk/z;->c:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/tencent/gsdk/y0;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/gsdk/z;->d:Ljava/lang/String;

    .line 5
    const-string v0, "-1"

    sput-object v0, Lcom/tencent/gsdk/z;->e:Ljava/lang/String;

    .line 6
    sput-object v0, Lcom/tencent/gsdk/z;->f:Ljava/lang/String;

    .line 7
    sput-object v0, Lcom/tencent/gsdk/z;->g:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/tencent/gsdk/y0;->f(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/gsdk/z;->f:Ljava/lang/String;

    .line 3
    invoke-static {p0}, Lcom/tencent/gsdk/y0;->e(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tencent/gsdk/z;->g:Ljava/lang/String;

    return-void
.end method
