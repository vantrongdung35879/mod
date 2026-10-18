.class Lcom/ihoc/mgpa/foldscreen/FoldScreenManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ihoc/mgpa/foldscreen/OnFoldChangeNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/mgpa/foldscreen/FoldScreenManager;->registerFoldChangeListener(Lcom/ihoc/mgpa/foldscreen/OnFoldChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ihoc/mgpa/foldscreen/FoldScreenManager;

.field final synthetic val$listener:Lcom/ihoc/mgpa/foldscreen/OnFoldChangeListener;


# direct methods
.method public constructor <init>(Lcom/ihoc/mgpa/foldscreen/FoldScreenManager;Lcom/ihoc/mgpa/foldscreen/OnFoldChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ihoc/mgpa/foldscreen/FoldScreenManager$1;->this$0:Lcom/ihoc/mgpa/foldscreen/FoldScreenManager;

    iput-object p2, p0, Lcom/ihoc/mgpa/foldscreen/FoldScreenManager$1;->val$listener:Lcom/ihoc/mgpa/foldscreen/OnFoldChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFoldChange(I)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/foldscreen/cloud/a;->a:Lcom/ihoc/mgpa/foldscreen/cloud/a;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/foldscreen/cloud/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ihoc/mgpa/foldscreen/FoldScreenManager$1;->this$0:Lcom/ihoc/mgpa/foldscreen/FoldScreenManager;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/foldscreen/FoldScreenManager;->isFoldDevice()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/ihoc/mgpa/foldscreen/FoldScreenManager$1;->val$listener:Lcom/ihoc/mgpa/foldscreen/OnFoldChangeListener;

    if-nez v0, :cond_2

    return-void

    .line 11
    :cond_2
    invoke-interface {v0, p1}, Lcom/ihoc/mgpa/foldscreen/OnFoldChangeListener;->onFoldChange(I)V

    return-void
.end method
