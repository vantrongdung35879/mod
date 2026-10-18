.class public abstract Lcom/tencent/tme/live/o/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/o/b$a;
    }
.end annotation


# instance fields
.field public a:Lcom/tencent/tme/live/o/b$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(Lcom/tencent/tme/live/n/b;)V
    .locals 0

    iget-object p1, p0, Lcom/tencent/tme/live/o/b;->a:Lcom/tencent/tme/live/o/b$a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public abstract a(Lcom/tencent/tme/live/n/b;Landroid/text/TextPaint;Z)V
.end method
