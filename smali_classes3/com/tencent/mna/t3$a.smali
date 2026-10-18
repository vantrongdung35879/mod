.class Lcom/tencent/mna/t3$a;
.super Ljava/lang/Object;
.source "TransportManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/t3;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/mna/t3$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/tencent/mna/u1;->d()Lcom/tencent/mna/u1;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mna/t3$a;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Lcom/tencent/mna/u1;->a(Ljava/lang/String;)I

    return-void
.end method
