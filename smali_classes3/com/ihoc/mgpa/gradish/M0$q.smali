.class Lcom/ihoc/mgpa/gradish/M0$q;
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
    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/M0$q;->a:Lcom/ihoc/mgpa/gradish/M0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/M0$q;->a:Lcom/ihoc/mgpa/gradish/M0;

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/M0;->o(Lcom/ihoc/mgpa/gradish/M0;)Lcom/ihoc/mgpa/gradish/C;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/M0$q;->a:Lcom/ihoc/mgpa/gradish/M0;

    invoke-static {v1}, Lcom/ihoc/mgpa/gradish/M0;->p(Lcom/ihoc/mgpa/gradish/M0;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/C;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "config_check_result"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/M0$q;->a:Lcom/ihoc/mgpa/gradish/M0;

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/M0;->q(Lcom/ihoc/mgpa/gradish/M0;)V

    .line 5
    invoke-static {}, Lcom/ihoc/mgpa/superframe/cloud/SuperFrameHelper;->checkCloudConfig()V

    .line 6
    invoke-static {}, Lcom/ihoc/mgpa/foldscreen/FoldScreenManager;->getInstance()Lcom/ihoc/mgpa/foldscreen/FoldScreenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/mgpa/foldscreen/FoldScreenManager;->init()I

    return-void
.end method
