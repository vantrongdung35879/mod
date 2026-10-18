.class public Lcom/tencent/tme/live/v/c$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/v/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/tencent/tme/live/v/c;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/v/c;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/tencent/tme/live/v/c$a;->a:Lcom/tencent/tme/live/v/c;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/v/c$a;->a:Lcom/tencent/tme/live/v/c;

    invoke-virtual {v0, p1}, Lcom/tencent/tme/live/v/c;->a(Landroid/os/Message;)V

    return-void
.end method
