.class public Lcom/tencent/tme/live/a1/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/o2/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/a1/a;->a([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/tme/live/o2/c<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/a1/a;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/a1/a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/a1/a$a;->a:Lcom/tencent/tme/live/a1/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/a1/a$a;->a:Lcom/tencent/tme/live/a1/a;

    new-instance v1, Lcom/tencent/tme/live/a1/a$a$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/tme/live/a1/a$a$a;-><init>(Lcom/tencent/tme/live/a1/a$a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1
    iget-object p1, v0, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
