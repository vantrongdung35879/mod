.class Lcom/ihoc/mgpa/gradish/M0$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ihoc/mgpa/gradish/M0$x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/mgpa/gradish/M0;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ihoc/mgpa/gradish/M0;


# direct methods
.method constructor <init>(Lcom/ihoc/mgpa/gradish/M0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/M0$l;->a:Lcom/ihoc/mgpa/gradish/M0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/function/GameAdaptionHelper;->isFuncOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/function/GameAdaptionHelper;->checkAndStart()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "not open game adaption, skip"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    :goto_0
    invoke-static {}, Lcom/ihoc/mgpa/gradish/V0;->a()V

    return-void
.end method
