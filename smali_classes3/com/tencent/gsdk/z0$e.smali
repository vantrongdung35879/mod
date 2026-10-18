.class Lcom/tencent/gsdk/z0$e;
.super Ljava/lang/Object;
.source "SystemInfoCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/gsdk/z0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/gsdk/z0$e$a;,
        Lcom/tencent/gsdk/z0$e$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/tencent/gsdk/z0$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/gsdk/z0$e;->a()Lcom/tencent/gsdk/z0$e;

    move-result-object v0

    sput-object v0, Lcom/tencent/gsdk/z0$e;->a:Lcom/tencent/gsdk/z0$e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/gsdk/z0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/gsdk/z0$e;-><init>()V

    return-void
.end method

.method private static a()Lcom/tencent/gsdk/z0$e;
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/gsdk/z0$e$b;->c()Lcom/tencent/gsdk/z0$e;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 6
    :cond_0
    invoke-static {}, Lcom/tencent/gsdk/z0$e$a;->c()Lcom/tencent/gsdk/z0$e;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 11
    :cond_1
    new-instance v0, Lcom/tencent/gsdk/z0$e;

    invoke-direct {v0}, Lcom/tencent/gsdk/z0$e;-><init>()V

    return-object v0
.end method


# virtual methods
.method public b()F
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method
