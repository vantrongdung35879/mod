.class Lcom/tencent/qmsp/sdk/d/c$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/tencent/qmsp/sdk/b/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qmsp/sdk/d/c;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/qmsp/sdk/d/c;


# direct methods
.method constructor <init>(Lcom/tencent/qmsp/sdk/d/c;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qmsp/sdk/d/c$b;->a:Lcom/tencent/qmsp/sdk/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILorg/json/JSONObject;)V
    .locals 1

    const/16 v0, 0xa1

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/tencent/qmsp/sdk/d/c$b;->a:Lcom/tencent/qmsp/sdk/d/c;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/qmsp/sdk/d/c;->a(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
