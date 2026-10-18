.class public Lcom/tencent/tme/live/room/c$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/room/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/room/c$a;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/room/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/room/c$a$a;->a:Lcom/tencent/tme/live/room/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/room/c$a$a;->a:Lcom/tencent/tme/live/room/c$a;

    iget-object v0, v0, Lcom/tencent/tme/live/room/c$a;->e:Lcom/tencent/tme/live/room/c;

    .line 1
    invoke-virtual {v0}, Lcom/tencent/tme/live/room/c;->s()V

    return-void
.end method
