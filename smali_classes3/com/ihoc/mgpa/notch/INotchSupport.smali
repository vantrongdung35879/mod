.class public interface abstract Lcom/ihoc/mgpa/notch/INotchSupport;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getDisplayDensityDpi(Landroid/content/Context;)I
.end method

.method public abstract getDisplayRealSize(Landroid/content/Context;)[I
.end method

.method public abstract getNotchSize(Landroid/content/Context;Landroid/view/WindowInsets;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/WindowInsets;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSafeDisplay(Landroid/content/Context;Landroid/view/WindowInsets;)Landroid/graphics/Rect;
.end method

.method public abstract getStatusBarHeight(Landroid/content/Context;)I
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract hasNotchSupport(Landroid/content/Context;Landroid/view/WindowInsets;)Z
.end method

.method public abstract isHideNotch(Landroid/content/Context;)Z
.end method
