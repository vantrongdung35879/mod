.class public Lcom/tencent/tme/live/z0/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/z0/a$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/z0/a$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tme/live/z0/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tme/live/z0/a;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/tme/live/z0/a$a;->a(Lcom/tencent/tme/live/z0/a$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/z0/a;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/tme/live/z0/a$a;->b(Lcom/tencent/tme/live/z0/a$a;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tme/live/z0/a;->b:Ljava/lang/String;

    return-void
.end method
