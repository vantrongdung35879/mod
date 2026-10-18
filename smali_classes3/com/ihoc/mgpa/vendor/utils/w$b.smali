.class public final Lcom/ihoc/mgpa/vendor/utils/w$b;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/mgpa/vendor/utils/w;->checkVendorServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/ihoc/mgpa/vendor/utils/w;


# direct methods
.method public constructor <init>(Lcom/ihoc/mgpa/vendor/utils/w;)V
    .locals 0

    iput-object p1, p0, Lcom/ihoc/mgpa/vendor/utils/w$b;->a:Lcom/ihoc/mgpa/vendor/utils/w;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "samsung scenesdk bind server timeout, is not available."

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/w$b;->a:Lcom/ihoc/mgpa/vendor/utils/w;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/vendor/utils/b;->checkSuccessor()V

    return-void
.end method
