.class public Lcom/tencent/tme/live/f2/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/c2/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/f2/a;->write(Ljava/lang/Object;Ljava/net/SocketAddress;)Lcom/tencent/tme/live/c2/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/tme/live/c2/i<",
        "Lcom/tencent/tme/live/c2/k;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/nio/channels/FileChannel;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/f2/a;Ljava/nio/channels/FileChannel;)V
    .locals 0

    iput-object p2, p0, Lcom/tencent/tme/live/f2/a$b;->a:Ljava/nio/channels/FileChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lcom/tencent/tme/live/c2/h;)V
    .locals 1

    check-cast p1, Lcom/tencent/tme/live/c2/k;

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/tencent/tme/live/f2/a$b;->a:Ljava/nio/channels/FileChannel;

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    sget-object v0, Lcom/tencent/tme/live/j2/c;->a:Lcom/tencent/tme/live/j2/c;

    .line 3
    invoke-virtual {v0, p1}, Lcom/tencent/tme/live/j2/c;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
