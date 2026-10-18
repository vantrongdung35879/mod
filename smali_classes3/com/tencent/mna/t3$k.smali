.class Lcom/tencent/mna/t3$k;
.super Ljava/lang/Object;
.source "TransportManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/t3;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/mna/t3$k;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/mna/t3$k;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/tencent/mna/x2;->a()Lcom/tencent/mna/x2;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mna/t3$k;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mna/t3$k;->b:Ljava/lang/String;

    const/16 v3, 0x65

    .line 2
    invoke-virtual {v0, v3, v1, v2}, Lcom/tencent/mna/x2;->a(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method
