.class Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper$LayoutStateChangeCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LayoutStateChangeCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/core/util/Consumer<",
        "Landroidx/window/layout/WindowLayoutInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;


# direct methods
.method public constructor <init>(Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper$LayoutStateChangeCallback;->this$0:Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Landroidx/window/layout/WindowLayoutInfo;)V
    .locals 3

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroidx/window/layout/WindowLayoutInfo;->getDisplayFeatures()Ljava/util/List;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper$LayoutStateChangeCallback;->this$0:Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;

    invoke-static {v0}, Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;->access$000(Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;)I

    move-result v0

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 7
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/window/layout/DisplayFeature;

    .line 8
    instance-of v2, p1, Landroidx/window/layout/FoldingFeature;

    if-eqz v2, :cond_2

    .line 9
    check-cast p1, Landroidx/window/layout/FoldingFeature;

    .line 10
    invoke-interface {p1}, Landroidx/window/layout/FoldingFeature;->getState()Landroidx/window/layout/FoldingFeature$State;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/window/layout/FoldingFeature$State;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11
    const-string v2, "FLAT"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 13
    :cond_1
    const-string v1, "HALF_OPENED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 18
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper$LayoutStateChangeCallback;->this$0:Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;->access$100(Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/window/layout/WindowLayoutInfo;

    invoke-virtual {p0, p1}, Lcom/ihoc/mgpa/foldscreen/FoldScreenHelper$LayoutStateChangeCallback;->accept(Landroidx/window/layout/WindowLayoutInfo;)V

    return-void
.end method
