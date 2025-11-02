#pragma once

#include <cstddef>
#include <memory>
#include <mbgl/util/size.hpp>

namespace flmbgl {

class FlMbglTextureInterface {
 public:
  FlMbglTextureInterface(mbgl::Size size_) : size(size_) {}
  virtual ~FlMbglTextureInterface() = default;

  static std::unique_ptr<FlMbglTextureInterface> Create(mbgl::Size size_);

  void setSize(mbgl::Size size_) {
    if (size != size_) {
      size = size_;
      onSizeChanged();
    }
  }

  mbgl::Size getSize() const { return size; }

  virtual int64_t getTextureId() const = 0;
  virtual void initialize() = 0;
  virtual void update(const void* data, size_t length) = 0;
  virtual void onSizeChanged() = 0;

 private:
  mbgl::Size size;
};
}  // namespace flmbgl
