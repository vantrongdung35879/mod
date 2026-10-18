.class public Lcom/tencent/tme/live/z0/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/z0/d$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/z0/d$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tme/live/z0/d;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tme/live/z0/d;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tme/live/z0/d;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tme/live/z0/d;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tme/live/z0/d;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/tme/live/z0/d$a;->a(Lcom/tencent/tme/live/z0/d$a;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/tme/live/z0/d;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/tme/live/z0/d$a;->b(Lcom/tencent/tme/live/z0/d$a;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/tme/live/z0/d;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/tme/live/z0/d$a;->c(Lcom/tencent/tme/live/z0/d$a;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tme/live/z0/d;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tme/live/z0/d;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tme/live/z0/d;->e:Ljava/lang/String;

    return-void
.end method
