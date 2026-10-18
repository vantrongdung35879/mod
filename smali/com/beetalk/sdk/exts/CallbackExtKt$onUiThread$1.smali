.class public final Lcom/beetalk/sdk/exts/CallbackExtKt$onUiThread$1;
.super Ljava/lang/Object;
.source "CallbackExt.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/exts/CallbackExtKt;->onUiThread(Lcom/beetalk/sdk/GGPlatform$Callback;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCallbackExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CallbackExt.kt\ncom/beetalk/sdk/exts/CallbackExtKt$onUiThread$1\n*L\n1#1,15:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0xb0
.end annotation


# instance fields
.field final synthetic $block:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $this_onUiThread:Lcom/beetalk/sdk/GGPlatform$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/beetalk/sdk/GGPlatform$Callback<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/beetalk/sdk/GGPlatform$Callback;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/beetalk/sdk/GGPlatform$Callback<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/beetalk/sdk/exts/CallbackExtKt$onUiThread$1;->$this_onUiThread:Lcom/beetalk/sdk/GGPlatform$Callback;

    iput-object p2, p0, Lcom/beetalk/sdk/exts/CallbackExtKt$onUiThread$1;->$block:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/beetalk/sdk/exts/CallbackExtKt$onUiThread$1;->$this_onUiThread:Lcom/beetalk/sdk/GGPlatform$Callback;

    .line 12
    iget-object v1, p0, Lcom/beetalk/sdk/exts/CallbackExtKt$onUiThread$1;->$block:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    .line 11
    invoke-interface {v0, v1}, Lcom/beetalk/sdk/GGPlatform$Callback;->onPluginResult(Ljava/lang/Object;)V

    return-void
.end method
