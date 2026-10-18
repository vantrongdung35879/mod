.class public final Lcom/tencent/itop/httpdns/base/a/a;
.super Ljava/lang/Object;
.source "Executors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/itop/httpdns/base/a/a$b;,
        Lcom/tencent/itop/httpdns/base/a/a$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/tencent/itop/httpdns/base/a/b;

.field public static final b:Lcom/tencent/itop/httpdns/base/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/tencent/itop/httpdns/base/a/a$a;

    invoke-direct {v0}, Lcom/tencent/itop/httpdns/base/a/a$a;-><init>()V

    sput-object v0, Lcom/tencent/itop/httpdns/base/a/a;->a:Lcom/tencent/itop/httpdns/base/a/b;

    .line 22
    new-instance v0, Lcom/tencent/itop/httpdns/base/a/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/itop/httpdns/base/a/a$b;-><init>(Lcom/tencent/itop/httpdns/base/a/a$1;)V

    sput-object v0, Lcom/tencent/itop/httpdns/base/a/a;->b:Lcom/tencent/itop/httpdns/base/a/b;

    return-void
.end method

.method static synthetic a(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 19
    invoke-static {p0}, Lcom/tencent/itop/httpdns/base/a/a;->b(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1

    .line 26
    new-instance v0, Lcom/tencent/itop/httpdns/base/a/a$1;

    invoke-direct {v0, p0}, Lcom/tencent/itop/httpdns/base/a/a$1;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method
