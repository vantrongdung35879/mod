.class public interface abstract Lcom/tencent/tme/live/b2/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/b2/e$a;
    }
.end annotation


# virtual methods
.method public abstract addLast(Ljava/lang/String;Lcom/tencent/tme/live/b2/c;)V
.end method

.method public abstract clear()V
.end method

.method public abstract contains(Lcom/tencent/tme/live/b2/c;)Z
.end method

.method public abstract contains(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/tencent/tme/live/b2/c;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract fireExceptionCaught(Ljava/lang/Throwable;)V
.end method

.method public abstract fireFilterClose()V
.end method

.method public abstract fireFilterWrite(Lcom/tencent/tme/live/g2/d;)V
.end method

.method public abstract fireInputClosed()V
.end method

.method public abstract fireMessageReceived(Ljava/lang/Object;)V
.end method

.method public abstract fireMessageSent(Lcom/tencent/tme/live/g2/d;)V
.end method

.method public abstract fireSessionClosed()V
.end method

.method public abstract fireSessionCreated()V
.end method

.method public abstract fireSessionIdle(Lcom/tencent/tme/live/f2/f;)V
.end method

.method public abstract fireSessionOpened()V
.end method

.method public abstract get(Ljava/lang/Class;)Lcom/tencent/tme/live/b2/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/tencent/tme/live/b2/c;",
            ">;)",
            "Lcom/tencent/tme/live/b2/c;"
        }
    .end annotation
.end method

.method public abstract getSession()Lcom/tencent/tme/live/f2/j;
.end method
