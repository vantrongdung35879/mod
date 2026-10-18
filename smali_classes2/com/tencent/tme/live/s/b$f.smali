.class public Lcom/tencent/tme/live/s/b$f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/s/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public a:I

.field public b:Lcom/tencent/tme/live/n/b;

.field public c:Lcom/tencent/tme/live/n/b;

.field public d:Lcom/tencent/tme/live/n/b;

.field public e:Lcom/tencent/tme/live/n/b;

.field public f:Lcom/tencent/tme/live/n/b;

.field public g:Z

.field public h:Z

.field public i:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tme/live/s/b$f;->a:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/tme/live/s/b$f;->b:Lcom/tencent/tme/live/n/b;

    iput-object v1, p0, Lcom/tencent/tme/live/s/b$f;->c:Lcom/tencent/tme/live/n/b;

    iput-object v1, p0, Lcom/tencent/tme/live/s/b$f;->d:Lcom/tencent/tme/live/n/b;

    iput-object v1, p0, Lcom/tencent/tme/live/s/b$f;->e:Lcom/tencent/tme/live/n/b;

    iput-object v1, p0, Lcom/tencent/tme/live/s/b$f;->f:Lcom/tencent/tme/live/n/b;

    iput-boolean v0, p0, Lcom/tencent/tme/live/s/b$f;->g:Z

    iput-boolean v0, p0, Lcom/tencent/tme/live/s/b$f;->h:Z

    iput-boolean v0, p0, Lcom/tencent/tme/live/s/b$f;->i:Z

    return-void
.end method
