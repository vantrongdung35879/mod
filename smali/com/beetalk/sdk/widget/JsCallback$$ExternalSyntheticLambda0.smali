.class public final synthetic Lcom/beetalk/sdk/widget/JsCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/beetalk/sdk/widget/JsCallback;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/webkit/ValueCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/beetalk/sdk/widget/JsCallback;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/widget/JsCallback$$ExternalSyntheticLambda0;->f$0:Lcom/beetalk/sdk/widget/JsCallback;

    iput-object p2, p0, Lcom/beetalk/sdk/widget/JsCallback$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/beetalk/sdk/widget/JsCallback$$ExternalSyntheticLambda0;->f$2:Landroid/webkit/ValueCallback;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/beetalk/sdk/widget/JsCallback$$ExternalSyntheticLambda0;->f$0:Lcom/beetalk/sdk/widget/JsCallback;

    iget-object v1, p0, Lcom/beetalk/sdk/widget/JsCallback$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/beetalk/sdk/widget/JsCallback$$ExternalSyntheticLambda0;->f$2:Landroid/webkit/ValueCallback;

    invoke-static {v0, v1, v2}, Lcom/beetalk/sdk/widget/JsCallback;->$r8$lambda$-NRWgviUhKrDGi_cAoK5nCqeNss(Lcom/beetalk/sdk/widget/JsCallback;Ljava/lang/String;Landroid/webkit/ValueCallback;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
