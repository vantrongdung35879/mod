.class public Lcom/tencent/qimei/webview/util/X5StateController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qimei/webview/util/X5StateController$X5Controller;
    }
.end annotation


# instance fields
.field private volatile controller:Lcom/tencent/qimei/webview/util/X5StateController$X5Controller;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/qimei/ay/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/qimei/webview/util/X5StateController;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/tencent/qimei/webview/util/X5StateController;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/qimei/ay/g;->a:Lcom/tencent/qimei/webview/util/X5StateController;

    return-object v0
.end method


# virtual methods
.method public getController()Lcom/tencent/qimei/webview/util/X5StateController$X5Controller;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/webview/util/X5StateController;->controller:Lcom/tencent/qimei/webview/util/X5StateController$X5Controller;

    return-object v0
.end method

.method public setController(Lcom/tencent/qimei/webview/util/X5StateController$X5Controller;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/webview/util/X5StateController;->controller:Lcom/tencent/qimei/webview/util/X5StateController$X5Controller;

    return-void
.end method
