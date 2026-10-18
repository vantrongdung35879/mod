.class public Lcom/tencent/tme/live/r1/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/reward/a$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/tme/live/reward/a$a<",
        "Lcom/tencent/tme/live/w0/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/reward/operation/H5EntryView;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/reward/operation/H5EntryView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/r1/a;->a:Lcom/tencent/tme/live/reward/operation/H5EntryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/tencent/tme/live/w0/e;

    .line 1
    iget-object v0, p0, Lcom/tencent/tme/live/r1/a;->a:Lcom/tencent/tme/live/reward/operation/H5EntryView;

    .line 2
    iget-boolean v1, v0, Lcom/tencent/tme/live/reward/operation/H5EntryView;->e:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, v0, Lcom/tencent/tme/live/reward/operation/H5EntryView;->d:Lcom/tencent/tme/live/w0/e;

    .line 4
    invoke-virtual {v0}, Lcom/tencent/tme/live/reward/operation/H5EntryView;->b()V

    :goto_0
    return-void
.end method
