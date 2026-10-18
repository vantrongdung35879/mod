.class public Lcom/tencent/qimei/jsbridge/JsBridgeInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final JS_OBJECT_NAME:Ljava/lang/String; = "qimeiBridge"


# instance fields
.field private final bridgeHandler:Lcom/tencent/qimei/ae/f;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/tencent/qimei/ae/f;

    invoke-direct {v0, p1}, Lcom/tencent/qimei/ae/f;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/qimei/jsbridge/JsBridgeInterface;->bridgeHandler:Lcom/tencent/qimei/ae/f;

    return-void
.end method


# virtual methods
.method public postMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/jsbridge/JsBridgeInterface;->bridgeHandler:Lcom/tencent/qimei/ae/f;

    invoke-virtual {v0, p1}, Lcom/tencent/qimei/ae/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
