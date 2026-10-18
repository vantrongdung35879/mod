.class public Lcom/perfsight/apm/e/f$a;
.super Landroid/os/Binder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfsight/apm/e/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/perfsight/apm/e/f;


# direct methods
.method public constructor <init>(Lcom/perfsight/apm/e/f;)V
    .locals 0

    iput-object p1, p0, Lcom/perfsight/apm/e/f$a;->a:Lcom/perfsight/apm/e/f;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method
