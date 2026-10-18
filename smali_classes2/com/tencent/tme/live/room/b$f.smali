.class public Lcom/tencent/tme/live/room/b$f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/room/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/room/b;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/room/b;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/room/b$f;->a:Lcom/tencent/tme/live/room/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/room/b$f;->a:Lcom/tencent/tme/live/room/b;

    .line 1
    invoke-virtual {v0}, Lcom/tencent/tme/live/room/b;->f()V

    return-void
.end method
