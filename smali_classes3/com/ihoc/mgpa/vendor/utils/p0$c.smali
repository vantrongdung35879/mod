.class public final Lcom/ihoc/mgpa/vendor/utils/p0$c;
.super Landroid/os/Binder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihoc/mgpa/vendor/utils/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p4, p2}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    sget-object p2, Lcom/ihoc/mgpa/vendor/utils/p0$b;->a:Lcom/ihoc/mgpa/vendor/utils/p0;

    .line 1
    iget-object p2, p2, Lcom/ihoc/mgpa/vendor/utils/p0;->a:Lcom/ihoc/mgpa/vendor/utils/o0;

    if-eqz p2, :cond_3

    .line 2
    check-cast p2, Lcom/ihoc/mgpa/vendor/utils/k0;

    const/4 v1, 0x2

    const-string/jumbo v2, "value"

    if-ne p1, v1, :cond_1

    .line 3
    invoke-virtual {p4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_3

    goto :goto_0

    :cond_1
    const/16 v1, 0x20

    if-ne p1, v1, :cond_2

    invoke-virtual {p4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_3

    goto :goto_0

    :cond_2
    const/16 v1, 0x10

    if-ne p1, v1, :cond_3

    invoke-virtual {p4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_3

    :goto_0
    iget-object p2, p2, Lcom/ihoc/mgpa/vendor/utils/k0;->a:Lcom/ihoc/mgpa/vendor/utils/l0;

    invoke-virtual {p2, p1}, Lcom/ihoc/mgpa/vendor/utils/l0;->a(Ljava/lang/String;)V

    .line 4
    :cond_3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
