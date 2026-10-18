.class public Lcom/tencent/itop/httpdns/a/b/c/d$a;
.super Ljava/lang/Object;
.source "DnsResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/itop/httpdns/a/b/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field static final a:Lcom/tencent/itop/httpdns/a/b/c/d$a;


# instance fields
.field public b:Ljava/lang/String;

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lcom/tencent/itop/httpdns/a/b/c/d$a;

    invoke-direct {v0}, Lcom/tencent/itop/httpdns/a/b/c/d$a;-><init>()V

    sput-object v0, Lcom/tencent/itop/httpdns/a/b/c/d$a;->a:Lcom/tencent/itop/httpdns/a/b/c/d$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "0"

    iput-object v0, p0, Lcom/tencent/itop/httpdns/a/b/c/d$a;->b:Ljava/lang/String;

    const/4 v0, -0x1

    .line 46
    iput v0, p0, Lcom/tencent/itop/httpdns/a/b/c/d$a;->c:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/tencent/itop/httpdns/a/b/c/d$a;->b:Ljava/lang/String;

    .line 53
    iput p2, p0, Lcom/tencent/itop/httpdns/a/b/c/d$a;->c:I

    return-void
.end method
