.class public Lcom/tencent/tme/live/g0/b$b;
.super Lcom/tencent/tme/live/g0/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/g0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tme/live/g0/b<",
        "TE;>.a;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/tencent/tme/live/g0/b;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/g0/b;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/g0/b$b;->e:Lcom/tencent/tme/live/g0/b;

    invoke-direct {p0, p1}, Lcom/tencent/tme/live/g0/b$a;-><init>(Lcom/tencent/tme/live/g0/b;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/tme/live/g0/b$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/tme/live/g0/b$c<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tme/live/g0/b$b;->e:Lcom/tencent/tme/live/g0/b;

    iget-object v0, v0, Lcom/tencent/tme/live/g0/b;->a:Lcom/tencent/tme/live/g0/b$c;

    return-object v0
.end method
