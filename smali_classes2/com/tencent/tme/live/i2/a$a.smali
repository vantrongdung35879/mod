.class public Lcom/tencent/tme/live/i2/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/c2/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/i2/a;->c(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/tme/live/c2/i<",
        "Lcom/tencent/tme/live/c2/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/b2/c$a;

.field public final synthetic b:Lcom/tencent/tme/live/f2/j;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/i2/a;Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/j;)V
    .locals 0

    iput-object p2, p0, Lcom/tencent/tme/live/i2/a$a;->a:Lcom/tencent/tme/live/b2/c$a;

    iput-object p3, p0, Lcom/tencent/tme/live/i2/a$a;->b:Lcom/tencent/tme/live/f2/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lcom/tencent/tme/live/c2/h;)V
    .locals 1

    iget-object p1, p0, Lcom/tencent/tme/live/i2/a$a;->a:Lcom/tencent/tme/live/b2/c$a;

    iget-object v0, p0, Lcom/tencent/tme/live/i2/a$a;->b:Lcom/tencent/tme/live/f2/j;

    invoke-interface {p1, v0}, Lcom/tencent/tme/live/b2/c$a;->e(Lcom/tencent/tme/live/f2/j;)V

    return-void
.end method
