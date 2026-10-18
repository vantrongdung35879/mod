.class Lcom/tencent/qmsp/sdk/c/g$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/tencent/qmsp/sdk/b/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qmsp/sdk/c/g;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/qmsp/sdk/c/g;


# direct methods
.method constructor <init>(Lcom/tencent/qmsp/sdk/c/g;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qmsp/sdk/c/g$b;->a:Lcom/tencent/qmsp/sdk/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILorg/json/JSONObject;)V
    .locals 1

    const/16 v0, 0xa1

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/tencent/qmsp/sdk/c/g$b;->a:Lcom/tencent/qmsp/sdk/c/g;

    invoke-static {p1, p2}, Lcom/tencent/qmsp/sdk/c/g;->a(Lcom/tencent/qmsp/sdk/c/g;Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method
