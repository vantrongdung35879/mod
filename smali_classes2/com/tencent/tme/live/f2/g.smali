.class public Lcom/tencent/tme/live/f2/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/f2/g$b;,
        Lcom/tencent/tme/live/f2/g$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/tencent/tme/live/f2/a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/tencent/tme/live/f2/g$a;

.field public final c:Lcom/tencent/tme/live/c2/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tme/live/c2/i<",
            "Lcom/tencent/tme/live/c2/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/tme/live/j2/a;

    invoke-direct {v0}, Lcom/tencent/tme/live/j2/a;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/f2/g;->a:Ljava/util/Set;

    new-instance v0, Lcom/tencent/tme/live/f2/g$a;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/f2/g$a;-><init>(Lcom/tencent/tme/live/f2/g;)V

    iput-object v0, p0, Lcom/tencent/tme/live/f2/g;->b:Lcom/tencent/tme/live/f2/g$a;

    new-instance v0, Lcom/tencent/tme/live/f2/g$b;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/f2/g$b;-><init>(Lcom/tencent/tme/live/f2/g;)V

    iput-object v0, p0, Lcom/tencent/tme/live/f2/g;->c:Lcom/tencent/tme/live/c2/i;

    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/tme/live/f2/g$a;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/f2/g;->b:Lcom/tencent/tme/live/f2/g$a;

    return-object v0
.end method
